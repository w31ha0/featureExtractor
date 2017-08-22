.class public Lvpadn/ch;
.super Lvpadn/bu;
.source "OpenWebCommandOneStatus.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lvpadn/cs;

.field private e:Lvpadn/cr$a$a;


# direct methods
.method constructor <init>(Lvpadn/cs;Lorg/json/JSONObject;Lvpadn/cr$a$a;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Lorg/json/JSONObject;",
            "Lvpadn/cr$a$a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p5}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 26
    iput-object p2, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    .line 27
    iput-object p1, p0, Lvpadn/ch;->d:Lvpadn/cs;

    .line 28
    iput-object p3, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    .line 29
    iput-object p4, p0, Lvpadn/ch;->b:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    iput-object v0, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    .line 35
    :cond_0
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :try_start_0
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ch;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v0, "OpenWebCommandOneStatus"

    const-string v1, "Cannot get URL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/ch;)Lvpadn/cs;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lvpadn/ch;->d:Lvpadn/cs;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/ch;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    const-string v0, "OpenWebCommandOneStatus"

    const-string v1, "OpenWebCommandOneStatus.execute(doOpenAppOrBrowser): URL IS null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lvpadn/ch;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lvpadn/ch;->d:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "OpenWebCommandOneStatus"

    const-string v2, "OpenWebCommandOneStatus.execute(doOpenAppOrBrowser) throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 91
    :try_start_0
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "OpenWebCommandOneStatus"

    const-string v1, "actionButtonDataJsonObj == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lvpadn/ch;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 97
    const-string v0, "OpenWebCommandOneStatus"

    const-string v1, "OpenWebCommandOneStatus.execute(doOpenWebAppStep1): URL IS null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "OpenWebCommandOneStatus"

    const-string v2, "throws exception in doOpenWebAppStep1"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    :cond_1
    const/4 v2, 0x0

    .line 102
    :try_start_1
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v3, "html"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    :cond_2
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v3, "custom_close"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v3, "custom_close"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    move v3, v0

    .line 112
    :goto_2
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v4, "allow_orientation_change"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v4, "allow_orientation_change"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_3
    move v4, v0

    .line 116
    :goto_4
    const-string v5, "none"

    .line 117
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v6, "force_orientation"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v5, "force_orientation"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    :cond_3
    const v6, 0xffffff

    .line 122
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v7, "bk_c"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v6, "bk_c"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 127
    :cond_4
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v7, "show_prog_bar"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v7, "show_prog_bar"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_5
    move v7, v0

    .line 132
    :goto_6
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v8, "show_nav_bar"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v8, "show_nav_bar"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_7
    move v8, v0

    .line 137
    :goto_8
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v10, "use_webview_load_url"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lvpadn/ch;->a:Lorg/json/JSONObject;

    const-string v10, "use_webview_load_url"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    :goto_9
    move v9, v1

    .line 141
    :cond_5
    iget-object v0, p0, Lvpadn/ch;->c:Ljava/lang/String;

    if-nez v0, :cond_b

    if-nez v2, :cond_b

    .line 142
    const-string v0, "OpenWebCommandOneStatus"

    const-string v1, "u is null and html is null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v0, v9

    .line 108
    goto/16 :goto_1

    :cond_7
    move v0, v9

    .line 113
    goto :goto_3

    :cond_8
    move v0, v9

    .line 128
    goto :goto_5

    :cond_9
    move v0, v9

    .line 133
    goto :goto_7

    :cond_a
    move v1, v9

    .line 138
    goto :goto_9

    .line 146
    :cond_b
    iget-object v1, p0, Lvpadn/ch;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lvpadn/ch;->a(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_c
    move v8, v9

    goto :goto_8

    :cond_d
    move v7, v9

    goto :goto_6

    :cond_e
    move v4, v1

    goto/16 :goto_4

    :cond_f
    move v3, v9

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lvpadn/ch;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 51
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lvpadn/ch;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lvpadn/ch;->d:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "OpenWebCommandOneStatus"

    const-string v2, "start activity with appUrl is failed"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    iget-object v0, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    sget-object v1, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    if-ne v0, v1, :cond_1

    .line 58
    invoke-direct {p0}, Lvpadn/ch;->d()V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    sget-object v1, Lvpadn/cr$a$a;->b:Lvpadn/cr$a$a;

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lvpadn/ch;->e()V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    sget-object v1, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    if-ne v0, v1, :cond_3

    .line 65
    invoke-direct {p0}, Lvpadn/ch;->d()V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lvpadn/ch;->e:Lvpadn/cr$a$a;

    sget-object v1, Lvpadn/cr$a$a;->b:Lvpadn/cr$a$a;

    if-ne v0, v1, :cond_0

    .line 67
    invoke-direct {p0}, Lvpadn/ch;->e()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    .locals 12

    .prologue
    .line 159
    iget-object v0, p0, Lvpadn/ch;->d:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v11

    new-instance v0, Lvpadn/ch$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lvpadn/ch$1;-><init>(Lvpadn/ch;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V

    invoke-virtual {v11, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method
