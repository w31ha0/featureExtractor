.class public Lcom/android/main/TANCActivity;
.super Landroid/app/Activity;
.source "TANCActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/main/TANCActivity$TANCButtonListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/main/TANCActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/main/TANCActivity;->choiceBrowserToVisitUrl(Ljava/lang/String;)V

    return-void
.end method

.method private choiceBrowserToVisitUrl(Ljava/lang/String;)V
    .locals 24
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v11, 0x0

    .local v11, "existUC":Z
    const/4 v7, 0x0

    .local v7, "existOpera":Z
    const/4 v8, 0x0

    .local v8, "existQQ":Z
    const/4 v5, 0x0

    .local v5, "existDolphin":Z
    const/4 v9, 0x0

    .local v9, "existSkyfire":Z
    const/4 v10, 0x0

    .local v10, "existSteel":Z
    const/4 v6, 0x0

    .line 59
    .local v6, "existGoogle":Z
    const-string v22, ""

    .local v22, "ucPath":Ljava/lang/String;
    const-string v16, ""

    .local v16, "operaPath":Ljava/lang/String;
    const-string v18, ""

    .local v18, "qqPath":Ljava/lang/String;
    const-string v4, ""

    .local v4, "dolphinPath":Ljava/lang/String;
    const-string v19, ""

    .local v19, "skyfirePath":Ljava/lang/String;
    const-string v20, ""

    .local v20, "steelPath":Ljava/lang/String;
    const-string v12, ""

    .line 60
    .local v12, "googlePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/TANCActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 61
    .local v17, "packageMgr":Landroid/content/pm/PackageManager;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v15

    .line 62
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 95
    if-eqz v11, :cond_8

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 112
    :goto_1
    return-void

    .line 63
    :cond_0
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 64
    .local v14, "info":Landroid/content/pm/PackageInfo;
    move-object v0, v14

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 65
    .local v21, "temp":Ljava/lang/String;
    const-string v23, "com.uc.browser"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 67
    move-object/from16 v22, v21

    .line 68
    const/4 v11, 0x1

    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 69
    :cond_2
    const-string v23, "com.tencent.mtt"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 71
    move-object/from16 v18, v21

    .line 72
    const/4 v8, 0x1

    goto :goto_2

    .line 73
    :cond_3
    const-string v23, "com.opera.mini.android"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 75
    move-object/from16 v16, v21

    .line 76
    const/4 v7, 0x1

    goto :goto_2

    .line 77
    :cond_4
    const-string v23, "mobi.mgeek.TunnyBrowser"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 79
    move-object/from16 v4, v21

    .line 80
    const/4 v5, 0x1

    goto :goto_2

    .line 81
    :cond_5
    const-string v23, "com.skyfire.browser"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 83
    move-object/from16 v19, v21

    .line 84
    const/4 v9, 0x1

    goto :goto_2

    .line 85
    :cond_6
    const-string v23, "com.kolbysoft.steel"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 87
    move-object/from16 v20, v21

    .line 88
    const/4 v10, 0x1

    goto :goto_2

    .line 89
    :cond_7
    const-string v23, "com.android.browser"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 91
    move-object/from16 v12, v21

    .line 92
    const/4 v6, 0x1

    goto :goto_2

    .line 97
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    .end local v21    # "temp":Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_9

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 99
    :cond_9
    if-eqz v8, :cond_a

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 101
    :cond_a
    if-eqz v5, :cond_b

    .line 102
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 103
    :cond_b
    if-eqz v9, :cond_c

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 105
    :cond_c
    if-eqz v10, :cond_d

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 107
    :cond_d
    if-eqz v6, :cond_e

    .line 108
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/TANCActivity;->gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 110
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/main/TANCActivity;->doDefault(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private doDefault(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/main/TANCActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private gotoUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "packageMgr"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/main/TANCActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showTANC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v1, Lcom/android/main/TANCActivity$TANCButtonListener;

    invoke-direct {v1, p0, p3}, Lcom/android/main/TANCActivity$TANCButtonListener;-><init>(Lcom/android/main/TANCActivity;Ljava/lang/String;)V

    .line 29
    .local v1, "buttonListener":Lcom/android/main/TANCActivity$TANCButtonListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    const-string v3, "\u8bbf\u95ee"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 37
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/main/TANCActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 19
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "header"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "header":Ljava/lang/String;
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "content":Ljava/lang/String;
    const-string v4, "url"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v3}, Lcom/android/main/TANCActivity;->showTANC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
