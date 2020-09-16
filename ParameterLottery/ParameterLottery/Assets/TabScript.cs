using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TabScript : MonoBehaviour
{

    [SerializeField] private Button StatusGachaButton;
    [SerializeField] private GameObject StatusGachaPanel;
    [SerializeField] private Button RuleGachaButton;
    [SerializeField] private GameObject RuleGachaPanel;
    [SerializeField] private GameObject RuleGachaSettingPanel;
    [SerializeField] private Button LotteryButton;

    // Start is called before the first frame update
    private void Start()
    {
        StatusGachaButton.onClick.AddListener(() => ChangePanel(true));
        RuleGachaButton.onClick.AddListener(()=>ChangePanel(false));
    }
    
    private void ChangePanel(bool becomeStatusGacha)
    {
        StatusGachaPanel.SetActive(becomeStatusGacha);

        if (becomeStatusGacha)
        {
            RuleGachaPanel.SetActive(false);
            RuleGachaSettingPanel.SetActive(false);
        }
        else
        {
            LotteryButton.GetComponentInChildren<Text>().text = "抽選";
            RuleGachaPanel.SetActive(true);
            RuleGachaSettingPanel.SetActive(false);
        }
    }
}
