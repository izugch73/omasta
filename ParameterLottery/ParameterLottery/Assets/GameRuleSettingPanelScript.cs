using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameRuleSettingPanelScript : MonoBehaviour
{
    [SerializeField] private GameObject RuleContents;

    [SerializeField] private Button AllOn;
    [SerializeField] private Button AllOff;

    private void Start()
    {
        var items = RuleContents.GetComponentsInChildren<Toggle>();
        
        AllOn.onClick.AddListener(() =>
        {
            foreach (var toggle in items)
            {
                toggle.isOn = true;
            }
        });
        
        AllOff.onClick.AddListener(() =>
        {
            foreach (var toggle in items)
            {
                toggle.isOn = false;
            }
        });
        
    }
}
