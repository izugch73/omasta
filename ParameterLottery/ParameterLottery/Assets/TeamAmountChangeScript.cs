using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TeamAmountChangeScript : MonoBehaviour
{

    public Button MinusButton;
    public Button PlusButton;

    public Text TeamNum;

    public GameObject TeamLayoutRoot;
    public GameObject TeamImage;


    void Start()
    {

        MinusButton.onClick.AddListener(()=>{
            TeamNum.text = (int.Parse(TeamNum.text) - 1).ToString();

            var t = GameObject.Instantiate(TeamImage, Vector3.zero, Quaternion.identity);
            t.transform.parent = TeamLayoutRoot.transform;
            t.transform.localScale = Vector3.one;
            t.transform.localRotation = Quaternion.identity; 
        });

        PlusButton.onClick.AddListener(()=>{
            TeamNum.text = (int.Parse(TeamNum.text) + 1).ToString();
        });



    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
