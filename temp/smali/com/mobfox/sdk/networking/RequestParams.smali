.class public Lcom/mobfox/sdk/networking/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# static fields
.field public static final ADSPACE_HEIGHT:Ljava/lang/String; = "adspace_height"

.field public static final ADSPACE_STRICT:Ljava/lang/String; = "adspace_strict"

.field public static final ADSPACE_WIDTH:Ljava/lang/String; = "adspace_width"

.field public static final DEMO_AGE:Ljava/lang/String; = "demo_age"

.field public static final DEMO_GENDER:Ljava/lang/String; = "demo_gender"

.field public static final DEMO_KEYWORDS:Ljava/lang/String; = "demo_keywords"

.field public static final DEV_DNT:Ljava/lang/String; = "dev_dnt"

.field public static final H:Ljava/lang/String; = "h"

.field public static final INVH:Ljava/lang/String; = "s"

.field public static final IP:Ljava/lang/String; = "i"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final M:Ljava/lang/String; = "m"

.field public static final N_ADUNIT:Ljava/lang/String; = "n_adunit"

.field public static final N_CONTEXT:Ljava/lang/String; = "n_context"

.field public static final N_DESC_LEN:Ljava/lang/String; = "n_desc_len"

.field public static final N_DESC_REQ:Ljava/lang/String; = "n_desc_req"

.field public static final N_IMG:Ljava/lang/String; = "n_img"

.field public static final N_IMG_ICON_REQ:Ljava/lang/String; = "n_img_icon_req"

.field public static final N_IMG_ICON_SIZE:Ljava/lang/String; = "n_img_icon_size"

.field public static final N_IMG_LARGE_H:Ljava/lang/String; = "n_img_large_h"

.field public static final N_IMG_LARGE_REQ:Ljava/lang/String; = "n_img_large_req"

.field public static final N_IMG_LARGE_W:Ljava/lang/String; = "n_img_large_w"

.field public static final N_LAYOUT:Ljava/lang/String; = "n_layout"

.field public static final N_PLCMTTYPE:Ljava/lang/String; = "n_plcmttype"

.field public static final N_RATING_REQ:Ljava/lang/String; = "n_rating_req"

.field public static final N_TITLE_LEN:Ljava/lang/String; = "n_title_len"

.field public static final N_TITLE_REQ:Ljava/lang/String; = "n_title_req"

.field public static final N_TXT:Ljava/lang/String; = "n_txt"

.field public static final N_TYPE:Ljava/lang/String; = "n_type"

.field public static final N_VER:Ljava/lang/String; = "n_ver"

.field public static final O_ANDADVID:Ljava/lang/String; = "o_andadvid"

.field public static final O_ANDROIDID:Ljava/lang/String; = "o_andadvid"

.field public static final O_ANDROIDIMEI:Ljava/lang/String; = "o_androidimei"

.field public static final P:Ljava/lang/String; = "p"

.field public static final RT:Ljava/lang/String; = "rt"

.field public static final R_FLOOR:Ljava/lang/String; = "r_floor"

.field public static final R_RESP:Ljava/lang/String; = "r_resp"

.field public static final R_TYPE:Ljava/lang/String; = "r_type"

.field public static final SUB_BUNDLE_ID:Ljava/lang/String; = "sub_bundle_id"

.field public static final SUB_DOMAIN:Ljava/lang/String; = "sub_domain"

.field public static final SUB_NAME:Ljava/lang/String; = "sub_name"

.field public static final SUB_STOREURL:Ljava/lang/String; = "sub_storeurl"

.field public static final S_SUBID:Ljava/lang/String; = "s_subid"

.field public static final U:Ljava/lang/String; = "u"

.field public static final U_BR:Ljava/lang/String; = "u_br"

.field public static final U_WV:Ljava/lang/String; = "u_vw"

.field public static final V:Ljava/lang/String; = "v"

.field public static final domain:Ljava/lang/String; = "my.mobfox.com"

.field static userAgent:Ljava/lang/String;


# instance fields
.field params:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobfox/sdk/networking/RequestParams;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    .line 73
    const-string v0, "u"

    sget-object v1, Lcom/mobfox/sdk/networking/RequestParams;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "rt"

    const-string v1, "android_app"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "r_type"

    const-string v1, "native"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "adspace_strict"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 77
    const-string v0, "n_ver"

    const-wide v2, 0x3ff199999999999aL    # 1.1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;D)V

    .line 78
    const-string v0, "n_context"

    const-string v1, "content"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "n_plcmttype"

    const-string v1, "atomic"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "v"

    const-string v1, "Core_3.2.7"

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "n_img_icon_req"

    invoke-virtual {p0, v0, v4}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 83
    const-string v0, "n_img_icon_size"

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 84
    const-string v0, "n_title_req"

    invoke-virtual {p0, v0, v4}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 85
    const-string v0, "n_title_len"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 86
    const-string v0, "n_desc_req"

    invoke-virtual {p0, v0, v4}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 87
    const-string v0, "n_desc_len"

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 88
    const-string v0, "n_img_large_req"

    invoke-virtual {p0, v0, v4}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 89
    const-string v0, "n_img_large_w"

    const/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 90
    const-string v0, "n_img_large_h"

    const/16 v1, 0x273

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/mobfox/sdk/networking/RequestParams;)V
    .locals 3
    .param p1, "rp"    # Lcom/mobfox/sdk/networking/RequestParams;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    .line 95
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public getJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public setParam(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParam(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParam(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParams(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mobfox/sdk/networking/RequestParams;->params:Lorg/json/JSONObject;

    .line 162
    return-void
.end method
