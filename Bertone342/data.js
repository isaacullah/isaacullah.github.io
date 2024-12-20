var APP_DATA = {
  "scenes": [
    {
      "id": "0-interior-south-room",
      "name": "Interior South Room",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 1.857511097712016,
        "pitch": 0.4557258146541443,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.7841610358679088,
          "pitch": 0.5716516324117507,
          "rotation": 0,
          "target": "1-interior-center",
          "initialViewParameters": {
            "yaw": -0.061756665938450084,
            "pitch": 0.48471898825664894,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": 0.9824807882064395,
          "pitch": 0.39317234116619204,
          "rotation": 0,
          "target": "15-west-side-center-2"
        }
      ],
      "infoHotspots": [
        {
          "yaw": -1.614583042229011,
          "pitch": -0.30337065917285244,
          "title": "View a 3D Scan of this building!",
          "text": "<iframe width='560' height='315' src='https://www.youtube.com/embed/XqCv7Lj1Gdw?si=lDp4c4Mig7oRNCoL' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' referrerpolicy='strict-origin-when-cross-origin' allowfullscreen></iframe>"
        }
      ]
    },
    {
      "id": "1-interior-center",
      "name": "Interior Center",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.061756665938450084,
        "pitch": 0.48471898825664894,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 2.9731462061810223,
          "pitch": 0.6148625865920945,
          "rotation": 0,
          "target": "0-interior-south-room",
          "initialViewParameters": {
            "yaw": -1.0321394969837936,
            "pitch": 0.05261304266065103,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.646655981242267,
          "pitch": 0.61640854104661,
          "rotation": 0,
          "target": "15-west-side-center-2",
          "initialViewParameters": {
            "yaw": -1.752162658633324,
            "pitch": 0.28112608221189284,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -0.15838779254816515,
          "pitch": 0.6800660527186881,
          "rotation": 0,
          "target": "2-interior-north-room",
          "initialViewParameters": {
            "yaw": 3.123839882372149,
            "pitch": 0.534386345631221,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": [
        {
          "yaw": -1.6263989053797765,
          "pitch": 0.36693336088638695,
          "title": "Lower level entry door",
          "text": "This brick lined arched door provided access directly to the south room of the lower level."
        }
      ]
    },
    {
      "id": "2-interior-north-room",
      "name": "Interior North Room",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 2.964578588127667,
        "pitch": 0.7218012203223534,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 2.990691706790413,
          "pitch": 0.6592245176856597,
          "rotation": 0,
          "target": "3-north-side-center",
          "initialViewParameters": {
            "yaw": -0.778534827196788,
            "pitch": 0.3367499378975971,
            "fov": 1.509400672990387
          }
        },
        {
          "yaw": -0.08926608939825442,
          "pitch": 0.7268843669196556,
          "rotation": 0,
          "target": "1-interior-center",
          "initialViewParameters": {
            "yaw": 3.1165425595470904,
            "pitch": 0.5883798606410267,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -0.09810727334977187,
          "pitch": 0.30756962752835904,
          "rotation": 0,
          "target": "0-interior-south-room"
        }
      ],
      "infoHotspots": [
        {
          "yaw": -2.0395219441476513,
          "pitch": -0.030858082268816034,
          "title": "Niche",
          "text": "A wall niche with a wooden lintel."
        },
        {
          "yaw": 1.9267223430080653,
          "pitch": 0.2576930698591191,
          "title": "Exterior entry",
          "text": "Probable entry door leading from the landing at the top of the probable exterior staircase."
        },
        {
          "yaw": 0.9531825146138626,
          "pitch": 0.5958702172527417,
          "title": "Interior doorway",
          "text": "Probable <u><a href='https://isaacullah.github.io/Web3D-pipelines/' target='_blank'>interior doorway</a></u><i class='fas fa-external-link-alt' aria-hidden='true'></i> connecting the north and south rooms of the lower level."
        },
        {
          "yaw": 2.3722239910679903,
          "pitch": 0.45709749946206024,
          "title": "Niche",
          "text": "One of a pair of wall niches for the lower level room."
        },
        {
          "yaw": -2.6802862837749224,
          "pitch": 0.5021553386150668,
          "title": "Niche",
          "text": "One of a pair of wall niches for the lower level room."
        },
        {
          "yaw": 2.957990999710831,
          "pitch": -0.6164135127170276,
          "title": "Niche",
          "text": "A small niche high up the wall of the second level."
        },
        {
          "yaw": -1.5465461572764738,
          "pitch": 0.26314255571914025,
          "title": "Floor line",
          "text": "This line likely indicates the level of the floor of the second level."
        },
        {
          "yaw": -0.7576310976657936,
          "pitch": 0.6926866692472888,
          "title": "Interior dividing wall",
          "text": "This interior wall separated the north and south rooms."
        },
        {
          "yaw": 2.9745495196848957,
          "pitch": 0.25209295496295603,
          "title": "Entry door",
          "text": "This doorway provided direct exterior access to the north room of the lower level.&nbsp;"
        }
      ]
    },
    {
      "id": "3-north-side-center",
      "name": "North Side Center",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 0.6739656034624275,
        "pitch": -0.22453991835924292,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 2.2736053411607395,
          "pitch": 0.4630843507912594,
          "rotation": 0,
          "target": "18-northwest-corner"
        },
        {
          "yaw": -0.6363738964964014,
          "pitch": 0.2245373317014554,
          "rotation": 0,
          "target": "4-north-side-east",
          "initialViewParameters": {
            "yaw": 1.9073922612429985,
            "pitch": 0.17810142764694525,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": 0.6398564377832514,
          "pitch": 0.45544070169784767,
          "rotation": 0,
          "target": "2-interior-north-room",
          "initialViewParameters": {
            "yaw": -0.0737858521154493,
            "pitch": 0.49879234095449476,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": [
        {
          "yaw": 0.6160671069534907,
          "pitch": -0.20135500059558353,
          "title": "Door",
          "text": "Probably the original main door of the structure."
        }
      ]
    },
    {
      "id": "4-north-side-east",
      "name": "North Side East",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -3.0432283074636075,
        "pitch": 0.008213984887706971,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": -1.6534707984877706,
          "pitch": 0.7945035780536269,
          "rotation": 0,
          "target": "3-north-side-center",
          "initialViewParameters": {
            "yaw": 1.4299113357324824,
            "pitch": 0.08930163893185572,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": 1.7759343719621663,
          "pitch": 0.4114405769337548,
          "rotation": 0,
          "target": "5-northeast-corner",
          "initialViewParameters": {
            "yaw": -1.5038554643729078,
            "pitch": -0.07654967443081517,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "5-northeast-corner",
      "name": "Northeast Corner",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.07518341393206285,
        "pitch": -0.21028250225839962,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.0337719415658793,
          "pitch": 0.33680841463421274,
          "rotation": 0,
          "target": "4-north-side-east",
          "initialViewParameters": {
            "yaw": -2.6701641798498237,
            "pitch": 0.47972002119708534,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.7171354717698133,
          "pitch": 0.20315428184286333,
          "rotation": 0,
          "target": "6-east-side-north",
          "initialViewParameters": {
            "yaw": -1.002395654183136,
            "pitch": -0.042555749642325225,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "6-east-side-north",
      "name": "East Side North",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 0.2711973145406503,
        "pitch": -0.01782055103884872,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.5367700254325243,
          "pitch": 0.35386406788429525,
          "rotation": 0,
          "target": "5-northeast-corner",
          "initialViewParameters": {
            "yaw": 0.04480818556154631,
            "pitch": -0.03179441280373929,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.5030822592963116,
          "pitch": -0.1364866367995603,
          "rotation": 0,
          "target": "7-east-side-center",
          "initialViewParameters": {
            "yaw": -1.4060231552196072,
            "pitch": 0.1978184584132876,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "7-east-side-center",
      "name": "East Side Center",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 0.06444292622748549,
        "pitch": 0.5185780352304548,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.3627342595769179,
          "pitch": 0.7074758762422348,
          "rotation": 0,
          "target": "6-east-side-north",
          "initialViewParameters": {
            "yaw": 0.6551697499794091,
            "pitch": 0.18892815257946083,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.6896340372754821,
          "pitch": 0.19044931848657676,
          "rotation": 0,
          "target": "8-southeast-corner",
          "initialViewParameters": {
            "yaw": -1.3962142770694683,
            "pitch": 0.6406317302312523,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "8-southeast-corner",
      "name": "Southeast Corner",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 0.1637924374948554,
        "pitch": 0.6825271047878694,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.4295527667515806,
          "pitch": 0.5822479509141854,
          "rotation": 0,
          "target": "7-east-side-center",
          "initialViewParameters": {
            "yaw": 0.12443861926477773,
            "pitch": 0.6063348905683537,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -2.0795146238996693,
          "pitch": 0.8151634119696372,
          "rotation": 0,
          "target": "9-south-side-east",
          "initialViewParameters": {
            "yaw": -1.1397983158926905,
            "pitch": 0.5250786024565208,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": [
        {
          "yaw": 0.7241224896984999,
          "pitch": 0.5521670192819066,
          "title": "Slump damage",
          "text": "The downhill pressure of sediments is causing the wall to buckle inwards in this area."
        }
      ]
    },
    {
      "id": "9-south-side-east",
      "name": "South Side East",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.05101524358253151,
        "pitch": 0.47046254742556926,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.606593687840654,
          "pitch": 0.30459655641339367,
          "rotation": 0,
          "target": "8-southeast-corner"
        },
        {
          "yaw": -1.8535341944992165,
          "pitch": 0.7421348326254886,
          "rotation": 0,
          "target": "10-south-side-center",
          "initialViewParameters": {
            "yaw": -0.8043461348437191,
            "pitch": 0.7490304704041364,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "10-south-side-center",
      "name": "South Side Center",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.01611073155686782,
        "pitch": 0.5595474136190184,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 2.160644325197281,
          "pitch": 0.403110885292822,
          "rotation": 0,
          "target": "9-south-side-east",
          "initialViewParameters": {
            "yaw": 0.521670917228116,
            "pitch": 0.5478073861892554,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.713798359244663,
          "pitch": 0.8134945035147858,
          "rotation": 0,
          "target": "11-south-side-west",
          "initialViewParameters": {
            "yaw": -0.6612108263711693,
            "pitch": 0.4015404865705978,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "11-south-side-west",
      "name": "South Side West",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 0.24568865624228664,
        "pitch": 0.24770565943999046,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.981624961911793,
          "pitch": 0.4383855555556586,
          "rotation": 0,
          "target": "10-south-side-center",
          "initialViewParameters": {
            "yaw": 0.9743636189498925,
            "pitch": 0.6294540399161654,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.3281649778400908,
          "pitch": 0.6612026440933807,
          "rotation": 0,
          "target": "12-southwest-corner",
          "initialViewParameters": {
            "yaw": -1.055413442433716,
            "pitch": 0.44575415947308805,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "12-southwest-corner",
      "name": "Southwest Corner",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.6310036526441021,
        "pitch": -0.13009002258358038,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 0.8028294332584736,
          "pitch": 0.018041479265967553,
          "rotation": 0,
          "target": "11-south-side-west",
          "initialViewParameters": {
            "yaw": 1.492697153332081,
            "pitch": 0.02981178285278574,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.4578891821473086,
          "pitch": 0.536404894386969,
          "rotation": 0,
          "target": "13-west-side-south",
          "initialViewParameters": {
            "yaw": -0.9724477147178607,
            "pitch": 0.48198877932220974,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": [
        {
          "yaw": -0.0817785308484531,
          "pitch": 0.31402999693085576,
          "title": "Foundation",
          "text": "Fieldstone foundation is visible in this corner."
        }
      ]
    },
    {
      "id": "13-west-side-south",
      "name": "West Side South",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.07249829200591762,
        "pitch": 0.2993843351286696,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.560055839090321,
          "pitch": 0.7965777091125119,
          "rotation": 0,
          "target": "12-southwest-corner",
          "initialViewParameters": {
            "yaw": 0.2665115089099519,
            "pitch": -0.20052362760221776,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.6146166780177733,
          "pitch": 0.7995203794403913,
          "rotation": 0,
          "target": "14-west-side-center-1",
          "initialViewParameters": {
            "yaw": -0.8796341631443791,
            "pitch": 0.2356140978131993,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "14-west-side-center-1",
      "name": "West Side Center 1",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": 0.12351560860267163,
        "pitch": -0.11761563685639587,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 1.5474997506843824,
          "pitch": 0.3442439148069685,
          "rotation": 0,
          "target": "13-west-side-south",
          "initialViewParameters": {
            "yaw": 0.5773781210433011,
            "pitch": 0.48886166914341267,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.5262161658677869,
          "pitch": 0.5160714381772955,
          "rotation": 0,
          "target": "15-west-side-center-2",
          "initialViewParameters": {
            "yaw": -1.3648368539979536,
            "pitch": 0.25264157162565404,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": [
        {
          "yaw": -0.8867353863301659,
          "pitch": -0.22268724789802263,
          "title": "Arched door",
          "text": "Bricklined archway supporting a door frame."
        }
      ]
    },
    {
      "id": "15-west-side-center-2",
      "name": "West Side Center 2",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.07225013283581916,
        "pitch": -0.17998756549236106,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": -1.873988605850755,
          "pitch": 0.3350254248292437,
          "rotation": 0,
          "target": "16-west-side-north",
          "initialViewParameters": {
            "yaw": -0.9386220927515776,
            "pitch": 0.04322362797693913,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": 2.0727259000829754,
          "pitch": 0.7576286130478174,
          "rotation": 0,
          "target": "14-west-side-center-1",
          "initialViewParameters": {
            "yaw": 0.8683354928193836,
            "pitch": 0.04524777019301851,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -0.9338216149849323,
          "pitch": 0.1962040126237845,
          "rotation": 0,
          "target": "1-interior-center"
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "16-west-side-north",
      "name": "West Side North",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.4766091418907781,
        "pitch": -0.05524370822043423,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": -0.2879533205422433,
          "pitch": 0.36410298145113984,
          "rotation": 0,
          "target": "17-western-niche-interior"
        },
        {
          "yaw": 0.5817590906497951,
          "pitch": 0.10926049792445447,
          "rotation": 0,
          "target": "15-west-side-center-2",
          "initialViewParameters": {
            "yaw": 1.1820055756657801,
            "pitch": 0.39225854713675723,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -1.4526086761610415,
          "pitch": 0.37192985582749216,
          "rotation": 0,
          "target": "18-northwest-corner",
          "initialViewParameters": {
            "yaw": -0.6377421807805046,
            "pitch": 0.15483768280316212,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": [
        {
          "yaw": -0.32339822669186624,
          "pitch": -0.16608049022956095,
          "title": "Niche",
          "text": "Unknown function, but perhaps a support for an external staircase to the second floor."
        }
      ]
    },
    {
      "id": "17-western-niche-interior",
      "name": "Western Niche Interior",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "pitch": 0,
        "yaw": 0,
        "fov": 1.5707963267948966
      },
      "linkHotspots": [
        {
          "yaw": 1.569455145448634,
          "pitch": 0.5684755781392177,
          "rotation": 0,
          "target": "16-west-side-north"
        }
      ],
      "infoHotspots": []
    },
    {
      "id": "18-northwest-corner",
      "name": "Northwest Corner",
      "levels": [
        {
          "tileSize": 256,
          "size": 256,
          "fallbackOnly": true
        },
        {
          "tileSize": 512,
          "size": 512
        },
        {
          "tileSize": 512,
          "size": 1024
        },
        {
          "tileSize": 512,
          "size": 2048
        }
      ],
      "faceSize": 1520,
      "initialViewParameters": {
        "yaw": -0.2564291439468711,
        "pitch": 0.06058987353207712,
        "fov": 1.509400672990387
      },
      "linkHotspots": [
        {
          "yaw": 0.678002268775554,
          "pitch": 0.41937133257441417,
          "rotation": 0,
          "target": "16-west-side-north",
          "initialViewParameters": {
            "yaw": -0.12498677428529881,
            "pitch": -0.10244900247230682,
            "fov": 1.426417314891757
          }
        },
        {
          "yaw": -0.8350729190311661,
          "pitch": 0.3278981391147937,
          "rotation": 0,
          "target": "3-north-side-center",
          "initialViewParameters": {
            "yaw": -0.231423946009647,
            "pitch": 0.05806622327730082,
            "fov": 1.426417314891757
          }
        }
      ],
      "infoHotspots": []
    }
  ],
  "name": "Bertone 342 - Fabbrica di Seta",
  "settings": {
    "mouseViewMode": "drag",
    "autorotateEnabled": false,
    "fullscreenButton": true,
    "viewControlButtons": true
  }
}
