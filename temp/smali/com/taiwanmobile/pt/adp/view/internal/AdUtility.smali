.class public Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;
.super Ljava/lang/Object;
.source "AdUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;
    }
.end annotation


# static fields
.field public static final STATUS_DISMISS_SCREEN:I = 0x1

.field public static final STATUS_LEAVE_APPLICATION:I = 0x2

.field public static final STATUS_PRESENT_SCREEN:I = 0x3

.field public static final STATUS_RECEIVE_AD:I = 0x0

.field public static final VIDEO_LOG_TYPE_CLICK_AD:Ljava/lang/String; = "C"

.field public static final VIDEO_LOG_TYPE_FACEBOOK:Ljava/lang/String; = "F"

.field public static final VIDEO_LOG_TYPE_IMPRESSION:Ljava/lang/String; = "I"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 1

    .prologue
    .line 213
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->c(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 300
    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 299
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 304
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 988
    const-string v0, "reserved_feature_1"

    invoke-virtual {p1, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getPropertyByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const-string v0, ""

    .line 993
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getEncryptedLocationString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 969
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 970
    const/4 v1, 0x0

    .line 971
    if-eqz v0, :cond_1

    .line 972
    const-string v1, "userAgent"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    :goto_0
    const-string v1, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userAgent : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getBirthdayStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;ZLjava/lang/String;)Ljava/util/Map;
    .locals 8

    .prologue
    .line 752
    const-string v0, "AdUtility"

    const-string v1, "getAdRequestParams invoked >>>>>>>> !!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 756
    const-string v0, "p1"

    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getSid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v0, "p3"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v0, ""

    .line 760
    :try_start_0
    invoke-static {p0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 765
    :goto_0
    if-eqz p3, :cond_0

    .line 766
    sget-object v3, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {p3, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 767
    const-string v3, "sb"

    .line 768
    const-string v4, "1"

    .line 767
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getCurrentQid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 778
    const-string v4, "AdUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "qid --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 780
    const-string v5, "AdUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "qans --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 782
    const-string v5, "qid"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v3, "qans"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_2
    const-string v3, "p4"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v0, "p5"

    invoke-static {p0, p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v0, "p6"

    .line 795
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getMobileNetworkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v0, "p12"

    .line 797
    invoke-virtual {p2, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getDeviceTestMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v0, "p15"

    invoke-static {}, Lcom/taiwanmobile/pt/util/Utility;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v0, "p17"

    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 799
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v0, "p20"

    .line 802
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 801
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string v0, "p22"

    .line 804
    const-string v3, "5.0.1"

    .line 803
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getEncodedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string v3, "p23"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v3, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 811
    const-string v4, "_deviceId"

    invoke-virtual {v3, v4, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 814
    const-string v0, "p24"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v0, "p28"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v0, "p29"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v0, "p30"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v0, "p31"

    .line 819
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getPhoneType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v0, "p32"

    .line 821
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getDeviceDensity(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v0, "p36"

    .line 825
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getPermissionList(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v0, "p37"

    .line 827
    invoke-virtual {p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getGenderMark()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v1, "fp"

    if-eqz p4, :cond_4

    const-string v0, "1"

    :goto_3
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v0, "p38"

    invoke-interface {v2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v0, "p39"

    invoke-static {p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 848
    const-string v0, "AdUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adRequest.Url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-object v2

    .line 770
    :cond_2
    const-string v3, "sb"

    .line 771
    const-string v4, "0"

    .line 770
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 785
    :cond_3
    const-string v3, "qid"

    .line 786
    const-string v4, ""

    .line 785
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v3, "qans"

    .line 788
    const-string v4, ""

    .line 787
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 829
    :cond_4
    const-string v0, "0"

    goto :goto_3

    .line 835
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 836
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_6

    .line 837
    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 844
    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 839
    :cond_6
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 761
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6

    .prologue
    .line 858
    const-string v0, "AdUtility"

    const-string v1, "getNewAdRequestParams >>>>>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 862
    const-string v0, "p1"

    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getSid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v0, "p3"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v0, ""

    .line 866
    :try_start_0
    invoke-static {p0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 871
    :goto_0
    if-eqz p3, :cond_0

    .line 872
    sget-object v3, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {p3, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 873
    const-string v3, "sb"

    .line 874
    const-string v4, "1"

    .line 873
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getCurrentQid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 884
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 885
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 886
    const-string v5, "qid"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v3, "qans"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    :goto_2
    const-string v3, "p4"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string v0, "p5"

    invoke-static {p0, p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string v0, "p6"

    .line 899
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getMobileNetworkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v0, "p12"

    .line 901
    invoke-virtual {p2, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getDeviceTestMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string v0, "p15"

    invoke-static {}, Lcom/taiwanmobile/pt/util/Utility;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v0, "p17"

    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string v0, "p20"

    .line 906
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v0, "p22"

    .line 908
    const-string v3, "5.0.1"

    .line 907
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 912
    if-eqz p6, :cond_4

    const-string v3, ""

    invoke-virtual {v3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 913
    const-string v3, "p23"

    invoke-interface {v2, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v3, "_deviceId"

    invoke-virtual {v0, v3, p6}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    :goto_3
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 924
    const-string v0, "p24"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v0, "p28"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v0, "p29"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v0, "p30"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v0, "p31"

    .line 929
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getPhoneType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v0, "p32"

    .line 931
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getDeviceDensity(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v0, "p36"

    .line 935
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getPermissionList(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v0, "p37"

    .line 937
    invoke-virtual {p2}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getGenderMark()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v1, "fp"

    if-eqz p4, :cond_5

    const-string v0, "1"

    :goto_4
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v1, "p40"

    if-eqz p7, :cond_6

    const-string v0, "1"

    :goto_5
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v0, "p38"

    invoke-interface {v2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v0, "p39"

    invoke-static {p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 960
    const-string v0, "AdUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adRequest.Url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-object v2

    .line 876
    :cond_2
    const-string v3, "sb"

    .line 877
    const-string v4, "0"

    .line 876
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 889
    :cond_3
    const-string v3, "qid"

    .line 890
    const-string v4, ""

    .line 889
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v3, "qans"

    .line 892
    const-string v4, ""

    .line 891
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 917
    :cond_4
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getEncodedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 918
    const-string v4, "p23"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v4, "_deviceId"

    invoke-virtual {v0, v4, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 939
    :cond_5
    const-string v0, "0"

    goto :goto_4

    .line 941
    :cond_6
    const-string v0, "0"

    goto :goto_5

    .line 947
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 948
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_8

    .line 949
    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 956
    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 951
    :cond_8
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 867
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    .prologue
    .line 611
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 613
    const-string v1, "adunitId"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 614
    const-string v2, "planId"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 615
    const-string v3, "_deviceId"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 618
    const-string v4, "cvt"

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 617
    check-cast v4, Ljava/lang/String;

    .line 619
    const-string v5, "adRequest"

    invoke-virtual {v0, v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 620
    const-string v6, "AdUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "adRequest is null ? "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 623
    const-string v6, "p1"

    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getSid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v6, "p3"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, ""

    .line 627
    :try_start_0
    invoke-static {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 633
    :goto_1
    const-string v6, "ctype"

    .line 634
    if-nez p2, :cond_0

    const-string p2, "1"

    .line 633
    :cond_0
    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v6, "p41"

    .line 638
    if-nez p3, :cond_1

    const-string p3, "main"

    .line 636
    :cond_1
    invoke-interface {v5, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v6, "p4"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v1, "p5"

    invoke-static {p0, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v1, "p6"

    .line 646
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getMobileNetworkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 645
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "p9"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "p12"

    .line 649
    invoke-virtual {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getDeviceTestMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v1, "p15"

    invoke-static {}, Lcom/taiwanmobile/pt/util/Utility;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v1, "p17"

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v1, "p20"

    .line 654
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v1, "p22"

    .line 656
    const-string v2, "5.0.1"

    .line 655
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v1, "p23"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getIsLimitAdTrackingEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 672
    const-string v2, "p40"

    .line 673
    if-eqz v1, :cond_4

    const-string v1, "1"

    .line 672
    :goto_2
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "p24"

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v1, "p28"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "p29"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v1, "p30"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v1, "p31"

    .line 680
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getPhoneType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "p32"

    .line 682
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getDeviceDensity(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v1, "p35"

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v1, "p37"

    .line 685
    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getGenderMark()Ljava/lang/String;

    move-result-object v2

    .line 684
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v1, "p39"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 703
    const-string v0, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportClick.Url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return-object v5

    .line 620
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 673
    :cond_4
    const-string v1, "0"

    goto/16 :goto_2

    .line 690
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 691
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_6

    .line 692
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    if-eqz v0, :cond_2

    .line 700
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 694
    :cond_6
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 628
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 7

    .prologue
    .line 391
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 393
    const-string v1, "adunitId"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    const-string v2, "planId"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 395
    const-string v3, "_deviceId"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 396
    const-string v4, "adRequest"

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 397
    const-string v5, "AdUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "adRequest is null ? "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 400
    const-string v5, "p1"

    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getSid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v5, "p3"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v1, ""

    .line 404
    :try_start_0
    invoke-static {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    :goto_1
    const-string v5, "p4"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "p5"

    invoke-static {p0, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v1, "p6"

    .line 411
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getMobileNetworkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v1, "p9"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "p12"

    .line 414
    invoke-virtual {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getDeviceTestMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "p15"

    invoke-static {}, Lcom/taiwanmobile/pt/util/Utility;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v1, "p17"

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v1, "p19"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "p20"

    .line 420
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v1, "p22"

    .line 422
    const-string v2, "5.0.1"

    .line 421
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v1, "p23"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getIsLimitAdTrackingEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 437
    const-string v2, "p40"

    .line 438
    if-eqz v1, :cond_2

    const-string v1, "1"

    .line 437
    :goto_2
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "p24"

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "p25"

    invoke-interface {v4, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "p26"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v1, "p27"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "p28"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "p29"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "p30"

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "p31"

    .line 448
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getPhoneType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v1, "p32"

    .line 450
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getDeviceDensity(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v1, "p37"

    .line 452
    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->getGenderMark()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "p39"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    const-string v0, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportVideoProgess.Url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-object v4

    .line 397
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 438
    :cond_2
    const-string v1, "0"

    goto/16 :goto_2

    .line 456
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 458
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 460
    :cond_4
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 405
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method private static final b(Landroid/content/Context;)Lcom/a/a/m;
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "_queue"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string v1, "AdUtility"

    const-string v2, "there had an exist queue!!"

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    check-cast v0, Lcom/a/a/m;

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-string v0, "AdUtility"

    const-string v1, "there is no queue!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcom/a/a/a/k;->a(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    const-string v2, "_queue"

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    const-string v2, "AdUtility"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :catch_1
    move-exception v1

    .line 220
    const-string v2, "AdUtility"

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :catch_2
    move-exception v1

    .line 222
    const-string v2, "AdUtility"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :catch_3
    move-exception v1

    .line 224
    const-string v2, "AdUtility"

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :catch_4
    move-exception v1

    .line 226
    const-string v2, "AdUtility"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelRequest(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 599
    :try_start_0
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "_queue"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    check-cast v0, Lcom/a/a/m;

    .line 602
    invoke-virtual {v0, p0}, Lcom/a/a/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    const-string v1, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": cancelRequest failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkActivityAttr(IILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 373
    and-int v0, p0, p1

    if-nez v0, :cond_0

    .line 374
    const-string v0, "TAMedia"

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The android:configChanges value of the com.taiwanmobile.pt.adp.view.TWMAdActivity must include "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 712
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getLastQuestionUpdateTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 714
    const-string v0, ""

    .line 744
    :goto_0
    return-object v0

    .line 718
    :cond_0
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getCurrentQid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 722
    :cond_2
    const-string v1, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qid ==> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {p0, v0}, Lcom/taiwanmobile/pt/util/Utility;->getCurrentQuestion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 726
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 728
    :cond_4
    const-string v1, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qt ==> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 730
    const-string v0, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qtArray.length : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    if-eqz v1, :cond_5

    array-length v0, v1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    .line 732
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 734
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_7

    .line 742
    const-string v0, "X"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const-string v0, "AdUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "qans : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 736
    :cond_7
    aget-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/taiwanmobile/pt/util/Utility;->isAppInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 737
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :goto_2
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    :cond_8
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static fireAdRequest(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 559
    const-string v1, "AdUtility"

    const-string v2, "fireAdRequest invoked!!"

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v7

    .line 562
    new-instance v8, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;

    const/4 v9, 0x1

    .line 563
    const-string v10, "http://agent.tamedia.com.tw/rmadp/g/adr"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 564
    invoke-static/range {v1 .. v6}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v4

    move-object v1, v8

    move v2, v9

    move-object v3, v10

    move-object v5, p4

    move-object v6, p4

    .line 562
    invoke-direct/range {v1 .. v6}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V

    .line 566
    new-instance v1, Lcom/a/a/d;

    const/16 v2, 0xfa0

    .line 567
    const/4 v3, 0x0

    .line 568
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/a/a/d;-><init>(IIF)V

    .line 566
    invoke-virtual {v8, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;

    .line 569
    const-string v1, "AdUtility"

    invoke-virtual {v8}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setShouldCache(Z)Lcom/a/a/l;

    .line 571
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setTag(Ljava/lang/Object;)Lcom/a/a/l;

    .line 572
    invoke-virtual {v7, v8}, Lcom/a/a/m;->a(Lcom/a/a/l;)Lcom/a/a/l;

    .line 573
    return-void
.end method

.method public static fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 235
    const-string v0, "AdUtility"

    const-string v1, "fireAdRequest2 invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;

    invoke-direct {v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;-><init>()V

    .line 237
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    return-void
.end method

.method public static getSupportAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1021
    const-string v0, "AdUtility"

    const-string v3, "getDefaultTranslateAnimation invoked!!"

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1027
    packed-switch p0, :pswitch_data_0

    .line 1057
    :goto_0
    return-object v9

    .line 1029
    :pswitch_0
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 1032
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 1034
    const/high16 v6, 0x40a00000    # 5.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 1032
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1036
    const-wide/16 v4, 0x9c4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1038
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1040
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1041
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1042
    const-wide/16 v2, 0xb54

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1044
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1049
    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1050
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1051
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isActivitySettingValid(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    const/high16 v2, 0x10000

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 313
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 315
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    .line 316
    :cond_0
    const-string v0, "TAMedia"

    .line 317
    const-string v1, "Could not find com.taiwanmobile.pt.adp.view.TWMAdActivity, please make sure it is registered in AndroidManifest.xml."

    .line 316
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 368
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 321
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x10

    .line 322
    const-string v4, "keyboard"

    .line 321
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 322
    if-nez v2, :cond_3

    .line 323
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 326
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x20

    .line 327
    const-string v4, "keyboardHidden"

    .line 326
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 327
    if-nez v2, :cond_4

    .line 328
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 331
    :cond_4
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x40

    .line 332
    const-string v4, "navigation"

    .line 331
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 332
    if-nez v2, :cond_5

    .line 333
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 336
    :cond_5
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 337
    const-string v4, "orientation"

    .line 336
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 337
    if-nez v2, :cond_6

    .line 338
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 341
    :cond_6
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x100

    .line 342
    const-string v4, "screenLayout"

    .line 341
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 342
    if-nez v2, :cond_7

    .line 343
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 346
    :cond_7
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x200

    .line 347
    const-string v4, "uiMode"

    .line 346
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 347
    if-nez v2, :cond_8

    .line 348
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 351
    :cond_8
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x400

    .line 352
    const-string v4, "screenSize"

    .line 351
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 352
    if-nez v2, :cond_9

    .line 353
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 356
    :cond_9
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x800

    .line 357
    const-string v4, "smallestScreenSize"

    .line 356
    invoke-static {v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->checkActivityAttr(IILjava/lang/String;)Z

    move-result v2

    .line 357
    if-nez v2, :cond_a

    .line 358
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 361
    :cond_a
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    const v2, 0x103000f

    if-eq v1, v2, :cond_1

    .line 362
    const-string v0, "TAMedia"

    .line 363
    const-string v1, "The android:theme value of the com.taiwanmobile.pt.adp.view.TWMAdActivity must include @android:style/Theme.Translucent ."

    .line 362
    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static isVideoShouldSetAsMute(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    .line 245
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 246
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 247
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 257
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 250
    goto :goto_0

    .line 253
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static popFailReceiveAd(Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 1095
    const-string v0, "AdUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popFailReceiveAd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 1097
    if-eqz v0, :cond_0

    .line 1099
    const-string v1, "adListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1098
    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 1100
    const-string v2, "ad"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 1101
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1102
    invoke-interface {v1, v0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 1105
    :cond_0
    return-void
.end method

.method public static popStatus(Ljava/lang/String;I)Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;
    .locals 3

    .prologue
    .line 1067
    const-string v0, "AdUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popStatus("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 1069
    if-eqz v0, :cond_0

    .line 1071
    const-string v1, "adListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1070
    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 1072
    const-string v2, "ad"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 1073
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1074
    packed-switch p1, :pswitch_data_0

    .line 1091
    :cond_0
    :goto_0
    return-object v0

    .line 1076
    :pswitch_0
    invoke-interface {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-interface {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onDismissScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto :goto_0

    .line 1082
    :pswitch_2
    invoke-interface {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onLeaveApplication(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto :goto_0

    .line 1085
    :pswitch_3
    invoke-interface {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onPresentScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto :goto_0

    .line 1074
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static processAdRequest(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 13

    .prologue
    .line 580
    const-string v1, "AdUtility"

    const-string v2, "processAdRequest invoked!!"

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v9

    .line 583
    new-instance v10, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;

    const/4 v11, 0x1

    .line 584
    const-string v12, "http://agent.tamedia.com.tw/rmadp/g/adr"

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 585
    invoke-static/range {v1 .. v8}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    move-object v1, v10

    move v2, v11

    move-object v3, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p4

    .line 583
    invoke-direct/range {v1 .. v6}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V

    .line 587
    new-instance v1, Lcom/a/a/d;

    const/16 v2, 0xfa0

    .line 588
    const/4 v3, 0x0

    .line 589
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/a/a/d;-><init>(IIF)V

    .line 587
    invoke-virtual {v10, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;

    .line 591
    const-string v1, "AdUtility"

    invoke-virtual {v10}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setShouldCache(Z)Lcom/a/a/l;

    .line 593
    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setTag(Ljava/lang/Object;)Lcom/a/a/l;

    .line 594
    invoke-virtual {v9, v10}, Lcom/a/a/m;->a(Lcom/a/a/l;)Lcom/a/a/l;

    .line 595
    return-void
.end method

.method public static final putQuestion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 56
    const-string v0, "AdUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putQuestion("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz p1, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :cond_0
    const-string v0, "AdUtility"

    const-string v1, "RESETQID!!!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->resetQidAndQuestion(Landroid/content/Context;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getCurrentQid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentQid--> : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "AdUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->getLastQuestionUpdateTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/taiwanmobile/pt/util/Utility;->putLastQuestionUpdateTime(Landroid/content/Context;)V

    .line 69
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/taiwanmobile/pt/util/Utility;->putQuestion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-static {p0, p1, p2}, Lcom/taiwanmobile/pt/util/Utility;->putQuestion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 507
    invoke-static {p0}, Lcom/a/a/a/k;->a(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v6

    .line 510
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;

    const/4 v1, 0x1

    .line 511
    invoke-static {p0, p2, p4, p5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 512
    new-instance v4, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v4, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v5, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    .line 510
    invoke-direct/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V

    .line 514
    new-instance v1, Lcom/a/a/d;

    const/16 v2, 0xfa0

    .line 516
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Lcom/a/a/d;-><init>(IIF)V

    .line 514
    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;

    .line 517
    invoke-virtual {v0, v7}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setShouldCache(Z)Lcom/a/a/l;

    .line 518
    invoke-virtual {v0, p3}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setTag(Ljava/lang/Object;)Lcom/a/a/l;

    .line 519
    invoke-virtual {v6, v0}, Lcom/a/a/m;->a(Lcom/a/a/l;)Lcom/a/a/l;

    .line 520
    return-void
.end method

.method public static reportDisplayAd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 262
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v6

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/adf?p3="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v0, Lcom/a/a/a/h;

    .line 266
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v4, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v5, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v5, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/a/a/n$b;Lcom/a/a/n$a;)V

    .line 268
    invoke-virtual {v6, v0}, Lcom/a/a/m;->a(Lcom/a/a/l;)Lcom/a/a/l;

    .line 269
    return-void
.end method

.method public static reportShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 530
    invoke-static {p0}, Lcom/a/a/a/k;->a(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v6

    .line 532
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;

    const/4 v1, 0x1

    .line 533
    const-string v2, "http://agent.tamedia.com.tw/rmadp/g/ads"

    invoke-static {p0, p2, v3, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 534
    new-instance v4, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v4, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v5, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v5, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-direct/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V

    .line 536
    new-instance v1, Lcom/a/a/d;

    const/16 v2, 0xfa0

    .line 538
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Lcom/a/a/d;-><init>(IIF)V

    .line 536
    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;

    .line 539
    invoke-virtual {v0, v7}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setShouldCache(Z)Lcom/a/a/l;

    .line 540
    const-string v1, "TWMInterstitialAd"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setTag(Ljava/lang/Object;)Lcom/a/a/l;

    .line 541
    invoke-virtual {v6, v0}, Lcom/a/a/m;->a(Lcom/a/a/l;)Lcom/a/a/l;

    .line 542
    return-void
.end method

.method public static reportVideoProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 283
    invoke-static {p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->b(Landroid/content/Context;)Lcom/a/a/m;

    move-result-object v6

    .line 285
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;

    const/4 v1, 0x1

    .line 286
    invoke-static {p0, p2, p3, p4, p5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    .line 287
    new-instance v4, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v4, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    .line 288
    new-instance v5, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;

    invoke-direct {v5, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$a;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    .line 285
    invoke-direct/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V

    .line 289
    new-instance v1, Lcom/a/a/d;

    const/16 v2, 0xfa0

    .line 291
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Lcom/a/a/d;-><init>(IIF)V

    .line 289
    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;

    .line 292
    invoke-virtual {v0, v7}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setShouldCache(Z)Lcom/a/a/l;

    .line 293
    const-string v1, "TWMVideoAd"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->setTag(Ljava/lang/Object;)Lcom/a/a/l;

    .line 294
    invoke-virtual {v6, v0}, Lcom/a/a/m;->a(Lcom/a/a/l;)Lcom/a/a/l;

    .line 296
    return-void
.end method
