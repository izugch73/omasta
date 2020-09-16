using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UniRx;
using UnityEngine;
using UnityEngine.UI;

public class GameRuleLotteryPanelScript : MonoBehaviour
{

    [SerializeField] private GameObject RuleContents;
    [SerializeField] private Text RuleText;
    [SerializeField] private Text RuleExplainText;
    [SerializeField] private Button LotteryButton;

    private void Start()
    {

        var items = RuleContents.GetComponentsInChildren<Toggle>(true).Where(t => t.isOn);
        
        LotteryButton.onClick.AddListener(() =>
        {
            LotteryButton.GetComponentInChildren<Text>().text = "抽選";

            if (items.Count() < 2)
            {
                LotteryButton.GetComponentInChildren<Text>().text = "ルール不足";
            }
            else
            {

                LotteryButton.interactable = false;
                
                var shuffled = items.OrderBy(i => Guid.NewGuid()).ToArray();
                // var rule = shuffled.First();
                // var ruleName = rule.transform.Find("Text").GetComponent<Text>().text;
                // var ruleDetail = rule.transform.Find("Explain").GetComponent<Text>().text;

                Observable.Timer(TimeSpan.FromSeconds(0.05f), TimeSpan.FromSeconds(0.05f))
                    .Take(20)
                    .DoOnCompleted(() => LotteryButton.interactable = true)
                    .Subscribe(n =>
                    {
                        RuleText.text = shuffled[n % shuffled.Length].transform.Find("Text").GetComponent<Text>().text;
                        RuleExplainText.text = shuffled[n % shuffled.Length].transform.Find("Explain").GetComponent<Text>().text;
                    }).AddTo(this);




            }
            
        });
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
