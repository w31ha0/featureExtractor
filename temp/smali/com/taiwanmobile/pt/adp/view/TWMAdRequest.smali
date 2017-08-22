.class public Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
.super Ljava/lang/Object;
.source "TWMAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;,
        Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;
    }
.end annotation


# static fields
.field public static final NOT_TESTING_DEVICE:Ljava/lang/String; = "0"

.field public static final TESTING_DEVICE:Ljava/lang/String; = "1"

.field public static final VERSION:Ljava/lang/String; = "5.0.1"

.field private static synthetic g:[I


# instance fields
.field private a:Landroid/location/Location;

.field private b:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

.field private c:I

.field private d:Ljava/util/Map;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->UNKNOWN:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    .line 19
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->values()[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->FEMALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->MALE:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->UNKNOWN:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public addKeywords(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public addMediationExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    return-object p0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->c:I

    return v0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getBirthdayStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->e:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDeviceTestMark(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "1"

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getGender()Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    return-object v0
.end method

.method public getGenderMark()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-string v0, "O"

    .line 66
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    const-string v0, "O"

    .line 79
    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    const-string v0, "M"

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "F"

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "O"

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->a:Landroid/location/Location;

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getPropertyByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Lcom/taiwanmobile/pt/util/Utility;->getEncodedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNetworkExtras(Ljava/lang/Class;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAge(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->c:I

    .line 92
    return-void
.end method

.method public setBirthday(Ljava/util/Calendar;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->e:Ljava/util/Date;

    .line 123
    :goto_0
    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->setBirthday(Ljava/util/Date;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    goto :goto_0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 4

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->e:Ljava/util/Date;

    .line 113
    :goto_0
    return-object p0

    .line 110
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->e:Ljava/util/Date;

    goto :goto_0
.end method

.method public setGender(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$Gender;

    .line 61
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->a:Landroid/location/Location;

    .line 160
    return-object p0
.end method

.method public setMediationExtras(Ljava/util/Map;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNetworkExtras(Lcom/taiwanmobile/pt/adp/view/mediation/NetworkExtras;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public setProperties(Ljava/util/Map;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    .line 23
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public setTestDevices(Ljava/util/Set;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;->f:Ljava/util/Set;

    .line 183
    return-object p0
.end method
