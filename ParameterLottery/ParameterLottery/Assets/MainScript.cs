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
            var r = getRandom(10 - m);
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


    private string[] getRandom(int maxval){

        var isShield1Flag = isShield1.isOn;
        var isUltimateFlag = isUltimate.isOn;

        if( isUltimateFlag && maxval < 8 ){
            //　それは無理
            return null;
        }

        var status = new int[]{1,1,1,1};
        int cnt = 0;

        if( !isUltimateFlag )
        {

            var randMax = isShield1Flag ? 3 : 4;

            for (int i = 0; i < maxval - 4; i++)
            {

                int target = Random.Range(0, randMax);
                
                while( status[target] >= 5 )
                {
                    cnt++;
                    target = Random.Range(0, randMax);
                }

                status[target] += 1;

            }

        }
        else
        {

            var randMax = isShield1Flag ? 3 : 4;

            status[Random.Range(0, randMax)] = 5;

            for (int i = 0; i < maxval - 8; i++)
            {

                int target = Random.Range(0, randMax);
                
                while( status[target] >= 5 )
                {
                    cnt++;
                    target = Random.Range(0, randMax);
                }

                status[target] += 1;

            }

        }
       
        Debug.Log(cnt + " times");
        
        string[] array = new string[4];
        array[0] = status[0].ToString();
        array[1] = status[1].ToString();
        array[2] = status[2].ToString();
        array[3] = status[3].ToString();

        return array;

    }

}
