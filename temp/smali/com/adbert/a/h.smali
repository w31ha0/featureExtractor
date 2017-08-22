.class public Lcom/adbert/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/net/wifi/WifiManager;

.field b:Landroid/net/wifi/WifiInfo;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->d:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->e:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->f:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->g:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->h:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->i:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->j:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->k:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->l:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->m:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/h;->n:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/adbert/a/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/adbert/a/h;->d:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/adbert/a/i;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->e:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/adbert/a/b/d;->Z:Lcom/adbert/a/b/d;

    invoke-virtual {v0}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    .line 40
    invoke-direct {p0}, Lcom/adbert/a/h;->e()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->f:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/adbert/a/h;->f:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/adbert/a/h;->f:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->h:Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/adbert/a/h;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->g:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->P:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/a/h;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-static {}, Lcom/adbert/a/i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->j:Ljava/lang/String;

    .line 53
    :try_start_1
    invoke-direct {p0}, Lcom/adbert/a/h;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/adbert/a/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->k:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->m:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 68
    :goto_3
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->n:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 72
    :goto_4
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 59
    :catch_2
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 64
    :catch_3
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 69
    :catch_4
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "phone"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 247
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 248
    packed-switch v0, :pswitch_data_0

    .line 268
    const-string v0, ""

    .line 271
    :goto_0
    return-object v0

    .line 254
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 264
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 266
    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    .line 271
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/adbert/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adbert/a/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adbert/a/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/adbert/a/h;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/adbert/a/h;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    :try_start_0
    sget-object v0, Lcom/adbert/a/b/d;->ai:Lcom/adbert/a/b/d;

    iget-object v1, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 209
    sget-object v0, Lcom/adbert/a/b/d;->ai:Lcom/adbert/a/b/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "phone"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    const-string v1, ""

    .line 223
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 229
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 231
    if-eqz v2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adbert/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    if-eqz v3, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastLocation"

    iget-object v2, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    const-string v3, "Location"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    iget-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 279
    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    new-instance v0, Lcom/adbert/a/e;

    iget-object v1, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    new-instance v2, Lcom/adbert/a/h$1;

    invoke-direct {v2, p0}, Lcom/adbert/a/h$1;-><init>(Lcom/adbert/a/h;)V

    invoke-direct {v0, v1, v2}, Lcom/adbert/a/e;-><init>(Landroid/content/Context;Lcom/adbert/a/e$a;)V

    .line 295
    :cond_1
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/adbert/a/b/d;->h:Lcom/adbert/a/b/d;

    invoke-virtual {v0}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    sget-object v0, Lcom/adbert/a/b/d;->i:Lcom/adbert/a/b/d;

    invoke-virtual {v0}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    .line 306
    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    sget-object v0, Lcom/adbert/a/b/d;->j:Lcom/adbert/a/b/d;

    invoke-virtual {v0}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_2
    new-instance v0, Lcom/adbert/a/k;

    iget-object v1, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/a/k;-><init>(Landroid/content/Context;)V

    .line 311
    sget-object v1, Lcom/adbert/a/b/h;->b:Lcom/adbert/a/b/h;

    invoke-virtual {v0, v1}, Lcom/adbert/a/k;->a(Lcom/adbert/a/b/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    sget-object v1, Lcom/adbert/a/b/d;->k:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    sget-object v1, Lcom/adbert/a/b/h;->d:Lcom/adbert/a/b/h;

    invoke-virtual {v0, v1}, Lcom/adbert/a/k;->a(Lcom/adbert/a/b/h;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    sget-object v1, Lcom/adbert/a/b/d;->l:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_4
    sget-object v1, Lcom/adbert/a/b/h;->d:Lcom/adbert/a/b/h;

    invoke-virtual {v0, v1}, Lcom/adbert/a/k;->a(Lcom/adbert/a/b/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    sget-object v0, Lcom/adbert/a/b/d;->N:Lcom/adbert/a/b/d;

    invoke-virtual {v0}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_5
    const-string v1, ""

    .line 321
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 322
    if-lez v1, :cond_6

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 326
    :cond_7
    sget-object v1, Lcom/adbert/a/b/d;->x:Lcom/adbert/a/b/d;

    invoke-virtual {v1, v0}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 336
    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/adbert/a/h;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/adbert/a/h;->a:Landroid/net/wifi/WifiManager;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/adbert/a/h;->b:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/adbert/a/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/h;->b:Landroid/net/wifi/WifiInfo;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/adbert/a/h;->b:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/adbert/a/h;->b:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 344
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 346
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    const-string v0, ""

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->t:Lcom/adbert/a/b/d;

    sget-object v2, Lcom/adbert/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->M:Lcom/adbert/a/b/d;

    sget-object v2, Lcom/adbert/a/i;->b:Ljava/lang/String;

    .line 185
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->O:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->f:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->P:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->Q:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->h:Ljava/lang/String;

    .line 187
    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->R:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->S:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->j:Ljava/lang/String;

    .line 188
    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->T:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->k:Ljava/lang/String;

    .line 189
    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->U:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->l:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-direct {p0}, Lcom/adbert/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->ad:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->n:Ljava/lang/String;

    .line 192
    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->ae:Lcom/adbert/a/b/d;

    iget-object v2, p0, Lcom/adbert/a/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&screenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/adbert/a/j;

    iget-object v2, p0, Lcom/adbert/a/h;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/adbert/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/adbert/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    if-nez p3, :cond_0

    .line 151
    const-string p3, ""

    .line 153
    :cond_0
    const-string v0, ""

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->a:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->b:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    .line 155
    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->d:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    if-nez p3, :cond_0

    .line 172
    const-string p3, ""

    .line 174
    :cond_0
    const-string v0, ""

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->a:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->b:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->d:Lcom/adbert/a/b/d;

    .line 176
    invoke-virtual {v1, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->V:Lcom/adbert/a/b/d;

    .line 177
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    if-nez p3, :cond_0

    .line 76
    const-string p3, ""

    .line 78
    :cond_0
    const-string v0, ""

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->a:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->b:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->J:Lcom/adbert/a/b/d;

    .line 80
    invoke-virtual {v1, p5}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&AD_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    if-nez p3, :cond_0

    .line 127
    const-string p3, ""

    .line 129
    :cond_0
    const-string v0, ""

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->a:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->b:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    .line 131
    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->z:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->d:Lcom/adbert/a/b/d;

    .line 132
    invoke-virtual {v1, p5}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->c:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p6}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    if-nez p3, :cond_0

    .line 109
    const-string p3, ""

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    const-string v0, ""

    .line 113
    if-eqz p5, :cond_2

    const-string v0, "0"

    .line 114
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adbert/a/b/d;->B:Lcom/adbert/a/b/d;

    invoke-virtual {v2, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->C:Lcom/adbert/a/b/d;

    invoke-virtual {v2, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->D:Lcom/adbert/a/b/d;

    .line 115
    invoke-virtual {v2, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->E:Lcom/adbert/a/b/d;

    invoke-virtual {v2, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->y:Lcom/adbert/a/b/d;

    .line 116
    invoke-virtual {v2, v0}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/adbert/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->J:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p6}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->K:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    :cond_1
    return-object v0

    .line 113
    :cond_2
    const-string v0, "1"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    if-nez p3, :cond_0

    .line 91
    const-string p3, ""

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    const-string v0, ""

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->B:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->C:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->D:Lcom/adbert/a/b/d;

    .line 96
    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->E:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->J:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p7}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/adbert/a/h;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->J:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    :cond_1
    if-eqz p6, :cond_2

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->H:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->I:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    if-nez p3, :cond_0

    .line 140
    const-string p3, ""

    .line 142
    :cond_0
    const-string v0, ""

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->a:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->b:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    .line 144
    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->L:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p5}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->d:Lcom/adbert/a/b/d;

    .line 145
    invoke-virtual {v1, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    if-nez p5, :cond_0

    .line 161
    const-string p5, ""

    .line 163
    :cond_0
    const-string v0, ""

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adbert/a/b/d;->a:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->b:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p2}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->d:Lcom/adbert/a/b/d;

    .line 165
    invoke-virtual {v1, p3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    invoke-virtual {v1, p5}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->c:Lcom/adbert/a/b/d;

    .line 166
    invoke-virtual {v1, p4}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method
