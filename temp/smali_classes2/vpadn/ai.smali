.class public Lvpadn/ai;
.super Lvpadn/ae;
.source "VponNativeAdController.java"

# interfaces
.implements Lvpadn/ap;
.implements Lvpadn/ar;
.implements Lvpadn/as;
.implements Lvpadn/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/ai$a;,
        Lvpadn/ai$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/Timer;

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Canvas;

.field private F:Landroid/graphics/Rect;

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lvpadn/ai$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lvpadn/ao;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lvpadn/aq;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lvpadn/df;

.field private v:Lvpadn/df;

.field private w:Lvpadn/df;

.field private x:Lvpadn/ax;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lvpadn/ao;Lvpadn/aq;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lvpadn/ae;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/ai;->y:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ai;->z:Z

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ai;->I:Ljava/util/Map;

    .line 651
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call VponNativeAdController this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lvpadn/ai;->I:Ljava/util/Map;

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lvpadn/ai;->y:I

    .line 655
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 391
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 393
    :cond_0
    return v0

    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/ai;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lvpadn/ai;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Lcom/vpadn/ads/VpadnAdRequest;JJ)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 893
    :try_start_0
    const-string v0, "format"

    const-string v1, "na"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string v0, "sid"

    invoke-virtual {p1, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 896
    const-string v0, "seq"

    invoke-virtual {p1, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 898
    const-string v0, "bid"

    iget-object v1, p0, Lvpadn/ai;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    if-eqz p2, :cond_0

    .line 901
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_6

    .line 902
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 905
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 928
    :cond_0
    :goto_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    .line 929
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lvpadn/au;->d(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 931
    if-eqz p2, :cond_c

    .line 932
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getAge()I

    move-result v0

    .line 933
    if-lez v0, :cond_1

    const/16 v3, 0x96

    if-ge v0, v3, :cond_1

    .line 934
    const-string v3, "age"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 937
    :cond_1
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;

    move-result-object v0

    sget-object v3, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v0, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 938
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;

    move-result-object v0

    sget-object v3, Lcom/vpadn/ads/VpadnAdRequest$Gender;->MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v0, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 939
    const-string v0, "gender"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 945
    :cond_2
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-DD"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v3

    .line 947
    if-eqz v3, :cond_3

    .line 948
    const-string v4, "bday"

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 951
    :cond_3
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 952
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 953
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 954
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    const-string v1, "VponNativeAdController"

    const-string v2, "collectPushlierParams throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    :cond_4
    :goto_3
    return-object p1

    .line 907
    :cond_5
    :try_start_1
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 910
    :cond_6
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_8

    .line 913
    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 914
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 916
    :cond_7
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 919
    :cond_8
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 920
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 922
    :cond_9
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 941
    :cond_a
    const-string v0, "gender"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 956
    :cond_b
    const-string v0, "kw"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 959
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getPublisherExtraData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 960
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getPublisherExtraData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 961
    const-string v3, "ex"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    :cond_c
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v0, v3}, Lvpadn/br;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 967
    invoke-static {}, Lvpadn/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 969
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    const-string v3, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v3, v0}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    const-string v3, "ms_not_accs"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lvpadn/au;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 975
    const-string v3, "VponNativeAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 983
    :cond_d
    :goto_4
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bp;->g(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/br;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 984
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    .line 985
    invoke-virtual {v0}, Lvpadn/bs;->c()V

    .line 986
    invoke-virtual {v0}, Lvpadn/bs;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    invoke-virtual {v0}, Lvpadn/bs;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 987
    const-string v3, "wifi_ssid"

    invoke-virtual {v0}, Lvpadn/bs;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 988
    const-string v3, "wifi_bssid"

    invoke-virtual {v0}, Lvpadn/bs;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    const-string v3, "wifi_level"

    invoke-virtual {v0}, Lvpadn/bs;->g()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 990
    const-string v3, "wifi_raw_level"

    invoke-virtual {v0}, Lvpadn/bs;->h()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 998
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string v2, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v2, v0}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    const-string v2, "ms"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getFakeAdvertisingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1005
    const-string v0, "VponNativeAdController"

    const-string v2, "adRequest.getFakeAdvertisingId() != null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v0, "bid"

    const-string v2, "8a80818257ff669e0157ffad5d3d000c"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getFakeAdvertisingId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lvpadn/au;->a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    const-string v1, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v1, v0}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->isForceFakeAdvertisingId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1011
    const-string v1, "ms"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 979
    :cond_e
    const-string v0, "VponNativeAdController"

    const-string v3, "Cannot get accs"

    invoke-static {v0, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 992
    :cond_f
    const-string v0, "VponNativeAdController"

    const-string v3, "vponWiFi.checkNetCardState() != WifiManager.WIFI_STATE_ENABLED or vponWiFi.isNetWorkState() return false"

    invoke-static {v0, v3}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 995
    :cond_10
    const-string v0, "VponNativeAdController"

    const-string v3, "Cannot get wifi info, currently use sim card network or don\'t have ACCESS_WiFi_State Permission"

    invoke-static {v0, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1013
    :cond_11
    const-string v1, "fake_secret"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 621
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 622
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 623
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lvpadn/ai;->a(Landroid/view/ViewGroup;)V

    .line 620
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 626
    :cond_1
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 631
    :cond_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 634
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 635
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 636
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 637
    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lvpadn/ai;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 634
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 642
    :cond_2
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 647
    :cond_3
    return-void
.end method

.method static synthetic a(Lvpadn/ai;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lvpadn/ai;->n()V

    return-void
.end method

.method static synthetic a(Lvpadn/ai;Lvpadn/ax;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lvpadn/ai;->a(Lvpadn/ax;)V

    return-void
.end method

.method static synthetic a(Lvpadn/ai;Lvpadn/ay;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lvpadn/ai;->a(Lvpadn/ay;)V

    return-void
.end method

.method private a(Lvpadn/ax;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1271
    const-string v0, "VponNativeAdController"

    const-string v1, "Enter loadHiddenBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lvpadn/ai;->f:Z

    if-nez v0, :cond_1

    .line 1275
    new-instance v0, Lvpadn/df;

    const-string v1, "nativeAdHiddenWebview"

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    .line 1276
    iget-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    invoke-virtual {v0, v3}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    move-object v0, p1

    .line 1277
    check-cast v0, Lvpadn/ay;

    invoke-virtual {v0}, Lvpadn/ay;->g()Ljava/lang/String;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lvpadn/ai;->v:Lvpadn/df;

    invoke-virtual {v1, v0}, Lvpadn/df;->setNativeAdUuid(Ljava/lang/String;)V

    .line 1279
    iput-object p1, p0, Lvpadn/ai;->x:Lvpadn/ax;

    .line 1280
    invoke-virtual {p1}, Lvpadn/ax;->a()Ljava/lang/String;

    move-result-object v2

    .line 1282
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real get Native ad BannerHtml:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-virtual {p0}, Lvpadn/ai;->b()V

    .line 1286
    iget-object v0, p0, Lvpadn/ai;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1287
    invoke-virtual {p0, v1}, Lvpadn/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    const-string v3, "VponNativeAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baseUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1292
    const-string v0, "VponNativeAdController"

    const-string v1, "mHiddenWebView mContext == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_2
    iget-boolean v0, p0, Lvpadn/ai;->f:Z

    if-ne v0, v3, :cond_0

    .line 1296
    const-string v0, "VponNativeAdController"

    const-string v1, "mHiddenWebView mIsDestroy == true"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lvpadn/ay;)V
    .locals 6

    .prologue
    .line 796
    invoke-virtual {p1}, Lvpadn/ay;->g()Ljava/lang/String;

    move-result-object v1

    .line 797
    iget-object v0, p0, Lvpadn/ai;->b:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const-string v0, "VponNativeAdController"

    const-string v2, "Invalid Banner ID!! StringUtils.isBlank(mBannerId) return true"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v2, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v2}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 804
    :cond_0
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget-object v0, p0, Lvpadn/ai;->g:Ljava/util/Map;

    const-string v2, "url_type_banner"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    if-eqz v0, :cond_2

    .line 808
    invoke-static {}, Lvpadn/br;->a()V

    .line 810
    :try_start_0
    new-instance v2, Lvpadn/an;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lvpadn/ai;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-direct {v2, v0, v3}, Lvpadn/an;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    invoke-static {v2}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_1
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v0

    .line 813
    const-string v1, "VponNativeAdController"

    const-string v2, "sendRequestToServer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 816
    :cond_2
    const-string v0, "VponNativeAdController"

    const-string v2, "mUrlMap.get(VponControllerInterface.URL_TYPE_BANNER) return null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0

    .line 822
    :cond_3
    const-string v0, "VponNativeAdController"

    const-string v2, "permission-checking is failed!!"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method

.method static synthetic b(Lvpadn/ai;)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lvpadn/ai;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lvpadn/ai;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lvpadn/ai;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lvpadn/ai;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lvpadn/ai;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lvpadn/ai;->p()V

    return-void
.end method

.method private d(Landroid/view/View;)Z
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 323
    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v2

    .line 330
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 331
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 333
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    if-lez v0, :cond_3

    move v0, v2

    .line 334
    :goto_1
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    if-lez v1, :cond_4

    move v1, v2

    .line 335
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move v0, v2

    .line 336
    :goto_3
    if-eqz v0, :cond_0

    move-object v1, p1

    .line 340
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 341
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 347
    invoke-direct {p0, v1, v0}, Lvpadn/ai;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    :goto_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_8

    .line 349
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 350
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 351
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 352
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 348
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_3
    move v0, v3

    .line 333
    goto :goto_1

    :cond_4
    move v1, v3

    .line 334
    goto :goto_2

    :cond_5
    move v0, v3

    .line 335
    goto :goto_3

    .line 355
    :cond_6
    invoke-direct {p0, v5}, Lvpadn/ai;->e(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 359
    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 360
    invoke-static {v1, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-double v6, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v5

    int-to-double v10, v1

    div-double v10, v6, v10

    .line 365
    :try_start_0
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v5, "viewable_rate"

    invoke-virtual {v1, v5}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 370
    :goto_6
    cmpg-double v1, v6, v8

    if-gtz v1, :cond_7

    .line 372
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 374
    :cond_7
    cmpl-double v1, v10, v6

    if-lez v1, :cond_2

    goto/16 :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v6, v8

    goto :goto_6

    :cond_8
    move-object v1, v0

    .line 384
    goto/16 :goto_4

    :cond_9
    move v2, v3

    .line 385
    goto/16 :goto_0
.end method

.method private e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lvpadn/ai;->f(Landroid/view/View;)I

    move-result v0

    .line 398
    ushr-int/lit8 v0, v0, 0x18

    .line 400
    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/view/View;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 409
    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 413
    invoke-direct {p0}, Lvpadn/ai;->m()V

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 422
    iget-object v2, p0, Lvpadn/ai;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 423
    invoke-virtual {v0, v1, v1, v4, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 425
    iget-object v2, p0, Lvpadn/ai;->E:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 426
    iget-object v2, p0, Lvpadn/ai;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 428
    iget-object v2, p0, Lvpadn/ai;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    move v0, v1

    .line 435
    :goto_0
    return v0

    .line 431
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "VponNativeAdController"

    const-string v1, "cancelCoveredCheckTimer()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 314
    iget-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 439
    iget-object v0, p0, Lvpadn/ai;->D:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ai;->D:Landroid/graphics/Bitmap;

    .line 441
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lvpadn/ai;->D:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lvpadn/ai;->E:Landroid/graphics/Canvas;

    .line 442
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvpadn/ai;->F:Landroid/graphics/Rect;

    .line 444
    :cond_0
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 466
    if-eqz p1, :cond_3

    .line 467
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------->>>[native] Send impression to 3rd tracking server impressionUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_0
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call send3rdImpressionToServer in VponNativeAdController url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {p1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "VponNativeAdController"

    const-string v1, "send3rdImpressionToServer StringUtils.isBlank(url) is True"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    const-string v0, "VponNativeAdController"

    const-string v1, "!url.toLowerCase().startsWith(http://) && !url.toLowerCase().startsWith(https://)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at send3rdImpressionToServer Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 482
    :cond_1
    :try_start_1
    new-instance v1, Lvpadn/ai$2;

    invoke-direct {v1, p0, p1}, Lvpadn/ai$2;-><init>(Lvpadn/ai;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 536
    :cond_2
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 543
    :cond_3
    const-string v0, "VponNativeAdController"

    const-string v1, "Cannot get native 3rd tracking impression URL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 549
    :try_start_0
    const-string v0, "{Vpadn-Guid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v1, "{Vpadn-Guid}"

    invoke-static {}, Lvpadn/bn;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 552
    :cond_0
    const-string v0, "{Vpadn-Sid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const-string v0, "{Vpadn-Sid}"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvpadn/ai;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 555
    :cond_1
    const-string v0, "{Vpadn-Seq}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    const-string v0, "{Vpadn-Seq}"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvpadn/ai;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 558
    :cond_2
    const-string v0, "{Vpadn-app}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    const-string v0, "{Vpadn-app}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/au;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 561
    :cond_3
    const-string v0, "{Vpadn-gaid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 562
    const-string v0, "{Vpadn-gaid}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 564
    :goto_1
    :try_start_1
    const-string v1, "{Vpadn-gaid-md5}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 565
    const-string v1, "{Vpadn-gaid-md5}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v2

    invoke-virtual {v2}, Lvpadn/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 570
    :cond_4
    :goto_2
    return-object v0

    .line 550
    :cond_5
    :try_start_2
    invoke-static {}, Lvpadn/bn;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 568
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 569
    :goto_3
    const-string v2, "VponNativeAdController"

    const-string v3, "replaceTrackingUrl throw Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 568
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v0, p1

    goto :goto_1
.end method

.method private n()V
    .locals 5

    .prologue
    .line 447
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lvpadn/ai;->g:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    if-eqz v0, :cond_1

    .line 451
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------->>>[native] Send impression to server impressionUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_0
    new-instance v1, Lvpadn/am;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lvpadn/ai;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lvpadn/am;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    invoke-static {v1}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const-string v1, "VponNativeAdController"

    const-string v2, "sendImpressionToServer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 459
    :cond_1
    const-string v0, "VponNativeAdController"

    const-string v1, "Cannot get native impression URL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private o(Ljava/lang/String;)Lvpadn/bg;
    .locals 3

    .prologue
    .line 1302
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call generateDetectedView uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-instance v0, Lvpadn/bg;

    iget-object v1, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lvpadn/bg;-><init>(Landroid/content/Context;Ljava/lang/String;Lvpadn/ap;)V

    .line 1306
    return-object v0
.end method

.method private declared-synchronized o()V
    .locals 2

    .prologue
    .line 1339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1340
    const-string v0, "VponNativeAdController"

    const-string v1, "destroy mInitWebView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 1342
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 1343
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 1344
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    :cond_0
    monitor-exit p0

    return-void

    .line 1339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized p()V
    .locals 2

    .prologue
    .line 1349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1350
    const-string v0, "VponNativeAdController"

    const-string v1, "destroy mHiddenWebView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 1352
    iget-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 1353
    iget-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 1354
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ai;->v:Lvpadn/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    :cond_0
    monitor-exit p0

    return-void

    .line 1349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 659
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/ai$3;

    invoke-direct {v1, p0, p1}, Lvpadn/ai$3;-><init>(Lvpadn/ai;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 203
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call removeUuidToViewDatasMapByUuididAndView, uuid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvpadn/ai$b;

    .line 207
    invoke-virtual {v1}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v3

    .line 208
    if-ne v3, p2, :cond_0

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call removeUuidToViewDatasMapByUuididAndView !mUuidToViewDatasMap.containsKey(uuid), uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call registerInteractionView, uuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    new-instance v2, Lvpadn/ai$b;

    invoke-direct {v2, p0, p2, p3}, Lvpadn/ai$b;-><init>(Lvpadn/ai;Landroid/view/View;Ljava/util/List;)V

    .line 131
    iget-object v1, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    .line 143
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 145
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-direct {p0, p1}, Lvpadn/ai;->o(Ljava/lang/String;)Lvpadn/bg;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :goto_1
    invoke-virtual {p0, p2}, Lvpadn/ai;->c(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :goto_2
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    :try_start_3
    const-string v2, "VponNativeAdController"

    const-string v3, "registerInteractionView throw Exception."

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 147
    :cond_1
    :try_start_4
    const-string v1, "VponNativeAdController"

    const-string v2, "(registerView instanceof ViewGroup) IS FALSE, CANNOT add DetectedNativeBehaviorView."

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 8

    .prologue
    .line 832
    :try_start_0
    const-string v0, "VponNativeAdController"

    const-string v1, "---->enter loadInitHtmlTemplate"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ai;->f:Z

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ai;->z:Z

    .line 837
    invoke-virtual {p0}, Lvpadn/ai;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 838
    const-string v0, "VponNativeAdController"

    const-string v1, "Device is not on-line, Cannot get the NativeAd"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NETWORK_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 861
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    .line 862
    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lvpadn/au;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 864
    const-string v1, "pf"

    iget-object v3, p0, Lvpadn/ai;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    const-string v1, "pf"

    iget-object v3, p0, Lvpadn/ai;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    invoke-virtual {p0}, Lvpadn/ai;->d()V

    .line 868
    iget-wide v4, p0, Lvpadn/ai;->k:J

    .line 869
    iget-wide v6, p0, Lvpadn/ai;->l:J

    move-object v1, p0

    move-object v3, p2

    .line 870
    invoke-direct/range {v1 .. v7}, Lvpadn/ai;->a(Lorg/json/JSONObject;Lcom/vpadn/ads/VpadnAdRequest;JJ)Lorg/json/JSONObject;

    move-result-object v1

    .line 871
    const-string v2, "build"

    const-string v3, "71707102"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    const-string v2, "<!doctype html> <html> <head> <meta charset=\'utf-8\'/>\n<script type=\'text/javascript\' charset=\'utf-8\' src=\'http://m.vpon.com/sdk/vpadn-sdk-core-v1.js\'></script>\n<script type=\'text/javascript\' charset=\'utf-8\'>\nVPSDK_LoadSdkConstants( JSON_REPLACE1 );\nVPSDK_BuildAdReqUrl( JSON_REPLACE2 );\n</script><body></body></html>"

    .line 874
    const-string v3, "JSON_REPLACE1"

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    const-string v2, "JSON_REPLACE2"

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 876
    const-string v0, "VponNativeAdController"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-direct {p0}, Lvpadn/ai;->o()V

    .line 879
    new-instance v0, Lvpadn/df;

    const-string v1, "init"

    iget-object v3, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v3, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    .line 880
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    invoke-virtual {v0, p1}, Lvpadn/df;->setNativeAdUuid(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    const-string v1, "file:///android_asset/www/vpadn"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInitHtmlTemplate throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;DDLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    const-string v4, "VponNativeAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call setNativeAdData(...), uuid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    move-object/from16 v0, p17

    iput-object v0, p0, Lvpadn/ai;->B:Ljava/util/List;

    .line 1030
    move-object/from16 v0, p11

    iput-object v0, p0, Lvpadn/ai;->A:Ljava/lang/String;

    .line 1032
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p11, :cond_1

    .line 1033
    :cond_0
    iget-object v4, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1034
    iget-object v4, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvpadn/ao;

    sget-object v5, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v4, v5}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 1035
    const-string v4, "VponNativeAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad Tech Team forget to fill title or actionName or jsClickFuncStr property \n title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actionName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jsClickFuncStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_0
    return-void

    .line 1039
    :cond_1
    if-eqz p6, :cond_2

    if-nez p7, :cond_3

    .line 1040
    :cond_2
    const/16 p6, 0x4b0

    .line 1041
    const/16 p7, 0x273

    .line 1043
    :cond_3
    if-eqz p9, :cond_4

    if-nez p10, :cond_5

    .line 1044
    :cond_4
    const/16 p9, 0x80

    .line 1045
    const/16 p10, 0x80

    .line 1048
    :cond_5
    iget-object v4, p0, Lvpadn/ai;->I:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lvpadn/ai;->I:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1049
    iget-object v4, p0, Lvpadn/ai;->I:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvpadn/aq;

    .line 1050
    invoke-interface {v4, p4}, Lvpadn/aq;->onReceivedActionName(Ljava/lang/String;)V

    .line 1051
    invoke-interface {v4, p2}, Lvpadn/aq;->onReceivedTitle(Ljava/lang/String;)V

    .line 1052
    invoke-interface {v4, p3}, Lvpadn/aq;->onReceivedBody(Ljava/lang/String;)V

    .line 1053
    invoke-interface {v4, p5, p6, p7}, Lvpadn/aq;->onReceivedCoverImageUrl(Ljava/lang/String;II)V

    .line 1054
    move-object/from16 v0, p8

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-interface {v4, v0, v1, v2}, Lvpadn/aq;->onReceivedIconUrl(Ljava/lang/String;II)V

    .line 1056
    const-wide/16 v6, 0x0

    cmpl-double v5, p12, v6

    if-eqz v5, :cond_9

    cmpl-double v5, p12, p14

    if-ltz v5, :cond_9

    .line 1057
    move-wide/from16 v0, p12

    move-wide/from16 v2, p14

    invoke-interface {v4, v0, v1, v2, v3}, Lvpadn/aq;->onReceivedRating(DD)V

    .line 1062
    :cond_6
    :goto_1
    move-object/from16 v0, p16

    invoke-interface {v4, v0}, Lvpadn/aq;->onReceivedSocialContext(Ljava/lang/String;)V

    .line 1065
    :cond_7
    const-string v4, "VponNativeAdController"

    const-string v5, "mIsGetNativeData IS TRUE!"

    invoke-static {v4, v5}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v4, 0x1

    iput-boolean v4, p0, Lvpadn/ai;->z:Z

    .line 1068
    iget-object v4, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1069
    iget-object v4, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvpadn/ao;

    invoke-interface {v4}, Lvpadn/ao;->onVponAdReceived()V

    .line 1072
    :cond_8
    iget-object v4, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_a

    .line 1073
    iget-object v4, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lvpadn/ai$5;

    invoke-direct {v5, p0, p1}, Lvpadn/ai$5;-><init>(Lvpadn/ai;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1058
    :cond_9
    cmpg-double v5, p12, p14

    if-gez v5, :cond_6

    .line 1059
    const-string v5, "VponNativeAdController"

    const-string v6, "ratingScale < ratingValue"

    invoke-static {v5, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1083
    :cond_a
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lvpadn/ai;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lvpadn/ai$6;

    invoke-direct {v5, p0, p1}, Lvpadn/ai$6;-><init>(Lvpadn/ai;Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lvpadn/ai$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call setUuidAndViewDatas, uuid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public a(Ljava/lang/String;Lvpadn/ao;)V
    .locals 3

    .prologue
    .line 226
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call setUuidAndNotificationMap, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public a(Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    .locals 9

    .prologue
    .line 699
    :try_start_0
    const-string v2, "VponNativeAdController"

    const-string v3, "===========>>Enter doOpenWebAppForSDKPlugIn"

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 702
    const-string v2, "adType"

    const-string v3, "sdkOpenWebApp"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v2, "url"

    invoke-virtual {v8, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v2, "isUseCustomClose"

    invoke-virtual {v8, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    const-string v3, "getControllerKey"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v3, "getNativeUuid"

    invoke-virtual {v8, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v3

    .line 712
    invoke-virtual {v3, v2, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    const-string v4, "getCallbackContextKey"

    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3, v2, p2}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    const/4 v2, -0x1

    .line 719
    iget-object v3, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 720
    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 722
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lvpadn/ai;->y:I

    .line 724
    const-string v3, "originalRequestedOrientation"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string v2, "beforeActivityOrientation"

    iget v3, p0, Lvpadn/ai;->y:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string v2, "forceOrientation"

    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v2, "isAllowOrientationChange"

    invoke-virtual {v8, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    const/4 v2, 0x0

    .line 732
    iget-object v3, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 733
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 734
    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 735
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 742
    :cond_1
    :goto_0
    const-string v3, "statusBarHeight"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    iget-object v2, p0, Lvpadn/ai;->x:Lvpadn/ax;

    if-eqz v2, :cond_2

    .line 746
    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v2

    invoke-virtual {v2}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v6

    .line 747
    if-eqz v6, :cond_2

    .line 748
    iget-object v2, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v2}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v3}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lvpadn/br;->a(Ljava/lang/Double;Ljava/lang/Double;DD)I

    move-result v2

    .line 749
    const-string v3, "distance"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    :cond_2
    if-eqz p4, :cond_3

    .line 754
    const-string v2, "html"

    invoke-virtual {v8, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_3
    const-string v2, "backgroundColor"

    move/from16 v0, p8

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    const-string v2, "isShowProgressBar"

    move/from16 v0, p9

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 759
    const-string v2, "isShowNavigationBar"

    move/from16 v0, p10

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 761
    const-string v2, "isUseWebViewLoadUrl"

    move/from16 v0, p11

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 764
    const-string v3, "click_url"

    iget-object v2, p0, Lvpadn/ai;->g:Ljava/util/Map;

    const-string v4, "url_type_click"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v2, "session_id"

    invoke-virtual {p0}, Lvpadn/ai;->e()J

    move-result-wide v4

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 767
    const-string v2, "sequence_number"

    invoke-virtual {p0}, Lvpadn/ai;->f()J

    move-result-wide v4

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 769
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const-class v4, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    const/high16 v2, 0x10000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 771
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 773
    const/4 v2, 0x0

    .line 774
    iget-object v4, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 775
    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    .line 777
    :cond_4
    :goto_1
    const-string v4, "isFullScreen"

    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 779
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 780
    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 781
    iget-object v2, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 782
    iget-object v2, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvpadn/ao;

    invoke-interface {v2}, Lvpadn/ao;->onVponPresent()V

    .line 787
    :cond_5
    :goto_2
    return-void

    .line 737
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 738
    if-lez v3, :cond_1

    .line 739
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 775
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 784
    :catch_0
    move-exception v2

    .line 785
    const-string v3, "VponNativeAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doOpenWebAppForSDKPlugIn throw Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvpadn/ai$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "VponNativeAdController"

    const-string v1, "call changeDetectedNativeBehaviorListener"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ai$b;

    .line 188
    invoke-virtual {v0}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v1

    .line 189
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    move-object v0, v1

    .line 191
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    instance-of v4, v0, Lvpadn/bg;

    if-eqz v4, :cond_1

    .line 193
    check-cast v0, Lvpadn/bg;

    invoke-virtual {v0, p0}, Lvpadn/bg;->setDetectedViewNotificationListener(Lvpadn/ap;)V

    .line 190
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 197
    :cond_2
    const-string v0, "VponNativeAdController"

    const-string v1, "(regView instanceof ViewGroup) IS FALSE, NativeAd reload Ad but CANNOT change DetectedNativeBehavior listener"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string v0, "VponNativeAdController"

    const-string v1, "call checkPublisherViewRegistered"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p1

    .line 159
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 160
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    instance-of v0, v0, Lvpadn/bg;

    if-eqz v0, :cond_1

    .line 162
    const/4 v2, 0x1

    .line 168
    :cond_0
    :goto_1
    return v2

    .line 159
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "VponNativeAdController"

    const-string v1, "(registerView instanceof ViewGroup) IS FALSE, CANNOT be checked whether PublisherView has Registered or not."

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 172
    const-string v0, "VponNativeAdController"

    const-string v1, "call removeDetectedNativeBehaviorView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    move-object v0, p1

    .line 175
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 176
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    instance-of v0, v2, Lvpadn/bg;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 177
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 181
    :cond_1
    const-string v0, "VponNativeAdController"

    const-string v1, "(registerView instanceof ViewGroup) IS FALSE, CANNOT remove DetectedNativeBehaviorView."

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 674
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/ai$4;

    invoke-direct {v1, p0, p1}, Lvpadn/ai$4;-><init>(Lvpadn/ai;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lvpadn/ai;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    new-instance v1, Lvpadn/ai$1;

    invoke-direct {v1, p0}, Lvpadn/ai$1;-><init>(Lvpadn/ai;)V

    .line 280
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    :goto_0
    invoke-direct {p0}, Lvpadn/ai;->l()V

    .line 297
    :goto_1
    return-void

    .line 283
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 289
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;

    .line 292
    :cond_2
    :try_start_0
    iget-object v0, p0, Lvpadn/ai;->C:Ljava/util/Timer;

    new-instance v1, Lvpadn/ai$a;

    invoke-direct {v1, p0, p1}, Lvpadn/ai$a;-><init>(Lvpadn/ai;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "VponNativeAdController"

    const-string v2, "mCoveredCheckTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1207
    new-instance v1, Lvpadn/ai$8;

    invoke-direct {v1, p0, p1}, Lvpadn/ai$8;-><init>(Lvpadn/ai;Ljava/lang/Object;)V

    .line 1218
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1223
    :goto_0
    return-void

    .line 1221
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cacheVideoByUrl(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1485
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "Banner cannot call cacheVideoByUrl. "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1488
    :goto_0
    const-string v0, "VponNativeAdController"

    const-string v1, "Banner cannot call cacheVideoByUrl. "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void

    .line 1486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public controlNativeVideoPlayer(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 1494
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "Banner cannot call controlNativeVideoPlayer. "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_0
    const-string v0, "VponNativeAdController"

    const-string v1, "Banner cannot call controlNativeVideoPlayer. "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void

    .line 1495
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1190
    const-string v1, "VponNativeAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call onDetectedViewChangeToVisible in NativeAd, uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-boolean v0, p0, Lvpadn/ai;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ai;->r:Z

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ai;->s:Ljava/lang/String;

    .line 1194
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lvpadn/ai;->dismissScreen(Ljava/lang/Object;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public dismissScreen(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1106
    const-string v1, "VponNativeAdController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call dismissScreen, uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-boolean v0, p0, Lvpadn/ai;->r:Z

    if-eqz v0, :cond_0

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ai;->r:Z

    .line 1109
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ai;->s:Ljava/lang/String;

    .line 1111
    :cond_0
    iget-object v1, p0, Lvpadn/ai;->H:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvpadn/ai;->H:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponDismiss()V

    .line 1114
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lvpadn/ai$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call getViewDatasMapByUuid, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1200
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call onDetectedViewChangeToInVisible in NativeAd, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call removeViewDatasMapByUuid, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call removeNotificationListenerMapByUuid, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 1312
    :try_start_0
    invoke-direct {p0}, Lvpadn/ai;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :goto_0
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    const-string v1, "VponNativeAdController"

    const-string v2, "cancelTimer() throws Exception!"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call removeNativeDataListenerMapByUuid, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lvpadn/ai;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lvpadn/ai;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1330
    const-string v0, "VponNativeAdController"

    const-string v1, "call webViewHandleDestroy"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ai;->f:Z

    .line 1333
    invoke-direct {p0}, Lvpadn/ai;->p()V

    .line 1334
    invoke-direct {p0}, Lvpadn/ai;->o()V

    .line 1335
    invoke-virtual {p0}, Lvpadn/ai;->j()V

    .line 1336
    return-void
.end method

.method public declared-synchronized i(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call unregisterView, uuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :try_start_1
    iget-object v1, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 579
    iget-object v1, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 580
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvpadn/ai$b;

    .line 581
    invoke-virtual {v2}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvpadn/ai;->b(Landroid/view/View;)V

    .line 582
    invoke-virtual {v2}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lvpadn/ai$b;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lvpadn/ai$b;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 584
    :cond_1
    invoke-virtual {v2}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v2

    .line 585
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 586
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    .line 614
    :try_start_2
    const-string v2, "VponNativeAdController"

    const-string v3, "unregisterView throw Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    :goto_1
    monitor-exit p0

    return-void

    .line 588
    :cond_2
    :try_start_3
    check-cast v2, Landroid/view/ViewGroup;

    .line 589
    invoke-direct {p0, v2}, Lvpadn/ai;->a(Landroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 592
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lvpadn/ai$b;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lvpadn/ai$b;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 593
    invoke-virtual {v2}, Lvpadn/ai$b;->a()Landroid/view/View;

    move-result-object v3

    .line 594
    invoke-virtual {v2}, Lvpadn/ai$b;->b()Ljava/util/List;

    move-result-object v5

    .line 595
    instance-of v2, v3, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    .line 596
    if-eqz v5, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 600
    :cond_4
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 601
    invoke-direct {p0, v2, v5}, Lvpadn/ai;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0

    .line 604
    :cond_5
    const-string v2, "VponNativeAdController"

    const-string v3, "Something wrong! at unregisterView"

    invoke-static {v2, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 608
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 609
    iget-object v1, p0, Lvpadn/ai;->G:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 611
    :cond_7
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call unregisterView mUuidToViewDatasMap.containsKey(uuid) return false uuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized j()V
    .locals 2

    .prologue
    .line 1359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1360
    const-string v0, "VponNativeAdController"

    const-string v1, "destory mClickWebView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 1362
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 1363
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    :cond_0
    monitor-exit p0

    return-void

    .line 1359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1094
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call presentScreenFromCordovaPlugin, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ai;->r:Z

    .line 1096
    iput-object p1, p0, Lvpadn/ai;->s:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponPresent()V

    .line 1101
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponLeaveApplication()V

    .line 1120
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 1370
    iget-boolean v0, p0, Lvpadn/ai;->z:Z

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1512
    invoke-virtual {p0}, Lvpadn/ai;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    const-string v0, "VponNativeAdController"

    const-string v1, "Cannot call sendClickEvent while NativeAd is not ready!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :goto_0
    return-void

    .line 1517
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvpadn/ai;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1518
    new-instance v0, Lvpadn/df;

    const-string v1, "nativeAdClickJSWebView"

    iget-object v2, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    .line 1519
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    .line 1520
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendClickEvent, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    invoke-virtual {v0, p1}, Lvpadn/df;->setNativeAdUuid(Ljava/lang/String;)V

    .line 1522
    const-string v0, "<!DOCTYPE html> <html> <head> <meta charset=\"utf-8\"><script type=\"text/javascript\" charset=\"utf-8\" src=\"http://m.vpon.com/sdk/vpadn-sdk-util-v1.js\">\n</script></head><body><script type=\"text/javascript\"> var hookEvent; hookEvent = function(ret) { REPLACE_JS_CLICK }; vpsdk.addEventListener(\'ready\', hookEvent);\n</script> </body> </html>"

    .line 1523
    const-string v1, ";cordova.exec( undefined, undefined, \"VponSdk\", \"close_native_click_webView\", [{}]);"

    .line 1524
    const-string v2, "REPLACE_JS_CLICK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lvpadn/ai;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1525
    iget-object v0, p0, Lvpadn/ai;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1526
    iget-object v0, p0, Lvpadn/ai;->w:Lvpadn/df;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    const-string v1, "VponNativeAdController"

    const-string v2, "sendClickEvent throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1528
    :cond_1
    :try_start_1
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 1531
    :cond_2
    const-string v0, "VponNativeAdController"

    const-string v1, "Ad Tech Team forget to fill title or actionName or jsClickFuncStr property"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public leaveApplicationFromVponActivity()V
    .locals 0

    .prologue
    .line 1377
    return-void
.end method

.method public notifyClickFailed()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public notifyClickOk()V
    .locals 0

    .prologue
    .line 1541
    return-void
.end method

.method public notifyImpressionFailed()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lvpadn/ai;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lvpadn/ai;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impFailed()V

    .line 1559
    :cond_0
    return-void
.end method

.method public notifyImpressionOk()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lvpadn/ai;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lvpadn/ai;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impOk()V

    .line 1552
    :cond_0
    return-void
.end method

.method public notifyToVisible()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "VponNativeAdController"

    const-string v1, "Native ad should not be visible"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-super {p0}, Lvpadn/ae;->notifyToVisible()V

    .line 793
    return-void
.end method

.method public onExpandModePressBackKey()V
    .locals 2

    .prologue
    .line 1381
    const-string v0, "VponNativeAdController"

    const-string v1, "onExpandModePressBackKey. Native Ad do nothing."

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void
.end method

.method public onVideoTrackComplete(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method

.method public onVideoTrackFirstQuartile(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1567
    return-void
.end method

.method public onVideoTrackMidpoint(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1570
    return-void
.end method

.method public onVideoTrackProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1582
    return-void
.end method

.method public onVideoTrackReplay(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1579
    return-void
.end method

.method public onVideoTrackStart(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1564
    return-void
.end method

.method public onVideoTrackThirdQuartile(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1573
    return-void
.end method

.method public onVponBannerImpression(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1260
    const-string v0, "VponNativeAdController"

    const-string v1, "call onVponBannerImpression"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->e()V

    .line 1262
    :cond_0
    return-void
.end method

.method public onVponBannerImpressionFailed(Lvpadn/aj;)V
    .locals 3

    .prologue
    .line 1266
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call onVponBannerImpressionFailed VponReturnCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/aj;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->e()V

    .line 1268
    :cond_0
    return-void
.end method

.method public onWebViewChangeToInvisible()V
    .locals 0

    .prologue
    .line 1138
    return-void
.end method

.method public onWebViewChangeToVisible()V
    .locals 0

    .prologue
    .line 1133
    return-void
.end method

.method public onWebViewLayoutChanged(IIII)V
    .locals 0

    .prologue
    .line 1159
    return-void
.end method

.method public onWebViewLoadPageFinish(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lvpadn/ai;->u:Lvpadn/df;

    const-string v1, "init-finish"

    invoke-virtual {v0, v1}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 1144
    const-string v0, "VponNativeAdController"

    const-string v1, "Load init html template finish"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :goto_0
    return-void

    .line 1146
    :cond_0
    const-string v0, "VponNativeAdController"

    const-string v1, "onWebViewLoadPageFinish -> destroyInitWebView()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-direct {p0}, Lvpadn/ai;->o()V

    goto :goto_0
.end method

.method public onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebViewReceivedError errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " des:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failingUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    const-string v1, "VponNativeAdController"

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lvpadn/ba;->b(Ljava/lang/String;Z)V

    .line 1168
    if-nez p1, :cond_1

    .line 1169
    const-string v0, "VponNativeAdController"

    const-string v1, "webView is null in onWebViewReceivedError"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :goto_0
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/ai$7;

    invoke-direct {v1, p0, p5}, Lvpadn/ai$7;-><init>(Lvpadn/ai;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1184
    :cond_0
    return-void

    .line 1171
    :cond_1
    check-cast p1, Lvpadn/df;

    .line 1172
    const-string v0, "VponNativeAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vponWebView ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] vponWebView ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lvpadn/ba;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onWebViewSizeChanged(II)V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method public playVideoOnNativePlayer(Lvpadn/p;Lvpadn/cr;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 1387
    :try_start_0
    const-string v0, "VponNativeAdController"

    const-string v2, "===========>>Enter playVideoOnNativePlayer"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1390
    const-string v0, "adType"

    const-string v2, "playVideoWithNativePlayer"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    const-string v2, "getControllerKey"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v2, "VponNativeAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playVideoOnNativePlayer ,uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v2, "getNativeUuid"

    invoke-virtual {v7, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    .line 1398
    invoke-virtual {v2, v0, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1400
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    const-string v3, "getCallbackContextKey"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v2, v0, p1}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1404
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    const-string v3, "getVideoDataKey"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v2, v0, p2}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1409
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 1410
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 1412
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lvpadn/ai;->y:I

    .line 1413
    const-string v2, "originalRequestedOrientation"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1414
    const-string v0, "beforeActivityOrientation"

    iget v2, p0, Lvpadn/ai;->y:I

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1418
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1419
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1420
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1421
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 1428
    :goto_1
    const-string v1, "statusBarHeight"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v4

    .line 1433
    if-eqz v4, :cond_0

    .line 1434
    iget-object v0, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lvpadn/ai;->x:Lvpadn/ax;

    invoke-virtual {v1}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lvpadn/br;->a(Ljava/lang/Double;Ljava/lang/Double;DD)I

    move-result v0

    .line 1435
    const-string v1, "distance"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1443
    :cond_0
    const-string v0, "none"

    .line 1444
    invoke-virtual {p2}, Lvpadn/cr;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    invoke-virtual {p2}, Lvpadn/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1446
    const-string v0, "landscape"

    .line 1451
    :cond_1
    :goto_2
    const-string v1, "forceOrientation"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v1, "click_url"

    iget-object v0, p0, Lvpadn/ai;->g:Ljava/util/Map;

    const-string v2, "url_type_click"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v0, "session_id"

    invoke-virtual {p0}, Lvpadn/ai;->e()J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1457
    const-string v0, "sequence_number"

    invoke-virtual {p0}, Lvpadn/ai;->f()J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1459
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    const-class v2, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1460
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1461
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1464
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 1465
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1467
    :goto_3
    const-string v2, "isFullScreen"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1469
    invoke-virtual {v1, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1470
    iget-object v0, p0, Lvpadn/ai;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1472
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Lvpadn/ai;->H:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponPresent()V

    .line 1480
    :cond_2
    :goto_4
    return-void

    .line 1423
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1424
    if-lez v0, :cond_7

    .line 1425
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    .line 1448
    :cond_4
    const-string v0, "portrait"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_5
    move v0, v6

    .line 1465
    goto :goto_3

    .line 1476
    :catch_0
    move-exception v0

    .line 1478
    const-string v1, "VponNativeAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideoOnNativePlayer throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_6
    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public setUseCustomClose(Z)V
    .locals 2

    .prologue
    .line 693
    const-string v0, "VponNativeAdController"

    const-string v1, "setUseCustomClose. Native ad do nothing"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method
