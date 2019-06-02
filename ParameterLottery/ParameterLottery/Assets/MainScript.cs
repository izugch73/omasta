﻿using System.Collections;
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
       
        var flag = true;

        int spd = 0;
        int scl = 0;
        int chg = 0;
        int sld = 0;

        int cnt = 0;
        while(flag){
            spd = Random.Range(1,6);
            scl = Random.Range(1,6);
            chg = Random.Range(1,6);
            sld = Random.Range(1,6);
            cnt++;

            if( spd + scl + chg + sld == maxval){
                flag = false;
                
                if( isShield1Flag && sld != 1){
                    flag = true;
                }
                if( isUltimateFlag && new int[]{spd,scl,chg,sld}.Max() != 5){
                    flag = true;
                }
            }
        }

        Debug.Log(cnt + " times");
        
        string[] array = new string[4];
        array[0] = spd.ToString();
        array[1] = scl.ToString();
        array[2] = chg.ToString();
        array[3] = sld.ToString();

        return array;

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}