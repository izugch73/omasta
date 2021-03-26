using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Linq;
using UniRx;
using Random = UnityEngine.Random;

public class MainScript : MonoBehaviour
{

    public Button shuffleButton;
    public Text shuffleButtonText;
    
    public Text speed;
    public Image spdBar;
    public Text scale;
    public Image sclBar;
    public Text charge;
    public Image chgBar;
    public Text shield;
    public Image sldBar;

    public Toggle isShield1;
    public Toggle isUltimate;
    public Slider Handicap;
    public Text HandicapText;

    public GameObject PlasmaBlueOrigin;
    public GameObject PlasmaRedOrigin;

    // Start is called before the first frame update
    void Start()
    {

        Application.targetFrameRate = 30;

        shuffleButton.onClick.AddListener(()=>{
            var m = int.Parse(HandicapText.text);
            var r = getRandomStatus(10 - m);
            if(r == null){
                shuffleButtonText.text = "それは無理やわ";
                return;
            }else{
                shuffleButtonText.text = "シャッフル！";
            }

            speed.text = "-";
            scale.text = "-";
            charge.text = "-";
            shield.text = "-";

            setAnimation(spdBar, 0.2f);
            setAnimation(sclBar, 0.2f);
            setAnimation(chgBar, 0.2f);
            setAnimation(sldBar, 0.2f);

            Observable.Timer(TimeSpan.FromSeconds(1f)).Subscribe(_ =>
            {
                speed.text = r[0];
                setAnimation(spdBar, int.Parse(r[0]) * 0.2f);
                scale.text = r[1];
                setAnimation(sclBar, int.Parse(r[1]) * 0.2f);
                charge.text = r[2];
                setAnimation(chgBar, int.Parse(r[2]) * 0.2f);
                shield.text = r[3];
                setAnimation(sldBar, int.Parse(r[3]) * 0.2f);
            }).AddTo(this);

            ShootBulletAnimation();
            
            shuffleButton.interactable = false;
            Observable.Timer(System.TimeSpan.FromSeconds(1.5f)).Subscribe(time=>{
                shuffleButton.interactable = true;
            }).AddTo(this);
        });

        Handicap.onValueChanged.AddListener((v) =>{
            HandicapText.text = ((int)v).ToString();
        });
        
    }

    void ShootBulletAnimation()
    {
        var ball = Instantiate(PlasmaBlueOrigin,
            new Vector3(-3f, -1f, -2f),
            Quaternion.Euler(0, 90, 0)
        );

        ball.GetComponent<Rigidbody>().AddForce(180f,0f,0f);
        Destroy(ball,3f);
    }

    void setAnimation(Image bar, float toValue){
        var flame = 15f;
        var diff = (toValue - bar.fillAmount) / flame;
        Observable.EveryUpdate().Take((int)flame).Subscribe(_=>{
            bar.fillAmount += diff;
        }).AddTo(this);
    }

    private string[] getRandomStatus(int maxval){

        if( isUltimate.isOn && maxval < 8 ){
            return null;
        }

        var status = new int[]{1,1,1,1};
        var randMax = isShield1.isOn ? 3 : 4;

        if( isUltimate.isOn ){
            status[Random.Range(0, randMax)] = 5;
        }

        var maxLoop = isUltimate.isOn ? maxval - 8 : maxval - 4;

        for (int i = 0; i < maxLoop; i++)
        {
            int target = 0;
            do {
                target = Random.Range(0, randMax);
            }
            while( status[target] >= 5 );
            status[target] += 1;
        }
        
        var array = new string[]{
            status[0].ToString(),
            status[1].ToString(),
            status[2].ToString(),
            status[3].ToString()            
        };

        return array;

    }

}
