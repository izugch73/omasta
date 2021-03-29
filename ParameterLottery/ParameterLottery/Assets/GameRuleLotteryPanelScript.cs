using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UniRx;
using UnityEngine;
using UnityEngine.UI;

public class GameRuleLotteryPanelScript : MonoBehaviour
{

    [SerializeField] private GameObject RuleContents;
    [SerializeField] private Text RuleText;
    [SerializeField] private Text RuleExplainText;
    [SerializeField] private Button LotteryButton;
    [SerializeField] private TextMeshProUGUI LotteryButtonText;

    private void Start()
    {

        var items = RuleContents.GetComponentsInChildren<Toggle>(true).Where(t => t.isOn);
        
        LotteryButton.onClick.AddListener(() =>
        {
            LotteryButtonText.text = "抽選";

            if (items.Count() < 2)
            {
                LotteryButtonText.text = "ルール不足";
            }
            else
            {

                LotteryButton.interactable = false;
                
                var shuffled = items.OrderBy(i => Guid.NewGuid()).ToArray();

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
}
