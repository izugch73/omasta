using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Linq;

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
                shuffleButtonText.text = "シャッフル!";
            }
            speed.text = r[0];
            spdBar.fillAmount = int.Parse(r[0]) * 0.2f;
            scale.text = r[1];
            sclBar.fillAmount = int.Parse(r[1]) * 0.2f;
            charge.text = r[2];
            chgBar.fillAmount = int.Parse(r[2]) * 0.2f;
            shield.text = r[3];
            sldBar.fillAmount = int.Parse(r[3]) * 0.2f;
        });

        Handicap.onValueChanged.AddListener((v) =>{
            HandicapText.text = ((int)v).ToString();
        });
        
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
