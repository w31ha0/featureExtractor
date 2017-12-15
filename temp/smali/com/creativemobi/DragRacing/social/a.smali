.class public final Lcom/creativemobi/DragRacing/social/a;
.super Ljava/lang/Object;
.source "Facebook.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Activity;

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:Lcom/creativemobi/DragRacing/social/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/creativemobi/DragRacing/social/a;->a:Ljava/lang/String;

    .line 67
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/creativemobi/DragRacing/social/a;->b:Ljava/lang/String;

    .line 69
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/creativemobi/DragRacing/social/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/DragRacing/social/a;->e:J

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/a;->f:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/creativemobi/DragRacing/social/a;)Lcom/creativemobi/DragRacing/social/d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    return-object v0
.end method

.method private a(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    array-length v1, p2

    if-lez v1, :cond_0

    .line 294
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 297
    const-string v1, "oauth"

    new-instance v2, Lcom/creativemobi/DragRacing/social/k;

    invoke-direct {v2, p0}, Lcom/creativemobi/DragRacing/social/k;-><init>(Lcom/creativemobi/DragRacing/social/a;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/creativemobi/DragRacing/social/d;)V

    .line 330
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    move v0, v5

    .line 276
    :goto_0
    return v0

    .line 262
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 272
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    .line 271
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    .line 276
    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/16 v5, 0x7f99

    const/4 v4, 0x0

    .line 215
    const/4 v0, 0x1

    .line 216
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 218
    const-string v2, "com.facebook.katana"

    const-string v3, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v2, "client_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    array-length v2, p3

    if-lez v2, :cond_0

    .line 222
    const-string v2, "scope"

    const-string v3, ","

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_0
    invoke-static {p1, v1}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 241
    :goto_0
    return v0

    .line 232
    :cond_1
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/a;->g:Landroid/app/Activity;

    .line 233
    iput-object p3, p0, Lcom/creativemobi/DragRacing/social/a;->h:[Ljava/lang/String;

    .line 234
    iput v5, p0, Lcom/creativemobi/DragRacing/social/a;->i:I

    .line 236
    const/16 v2, 0x7f99

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/social/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/DragRacing/social/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/creativemobi/DragRacing/social/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :cond_1
    sget-object v0, Lcom/creativemobi/DragRacing/social/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 346
    iget v0, p0, Lcom/creativemobi/DragRacing/social/a;->i:I

    if-ne p1, v0, :cond_2

    .line 349
    if-ne p2, v4, :cond_8

    .line 352
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 354
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_0
    if-eqz v0, :cond_6

    .line 359
    const-string v1, "service_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AndroidAuthKillSwitchException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    :cond_1
    const-string v0, "Facebook-authorize"

    const-string v1, "Hosted auth currently disabled. Retrying dialog auth..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/a;->h:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 410
    :cond_2
    :goto_0
    return-void

    .line 364
    :cond_3
    const-string v1, "access_denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "OAuthAccessDeniedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 366
    :cond_4
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    invoke-interface {v0}, Lcom/creativemobi/DragRacing/social/d;->a()V

    goto :goto_0

    .line 369
    :cond_5
    const-string v1, "Facebook-authorize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    new-instance v2, Lcom/creativemobi/DragRacing/social/p;

    invoke-direct {v2, v0}, Lcom/creativemobi/DragRacing/social/p;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/p;)V

    goto :goto_0

    .line 376
    :cond_6
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    .line 377
    const-string v0, "expires_in"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/social/a;->b(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/social/a;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 379
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success! access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/creativemobi/DragRacing/social/a;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/creativemobi/DragRacing/social/d;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 385
    :cond_7
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    new-instance v1, Lcom/creativemobi/DragRacing/social/p;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/creativemobi/DragRacing/social/p;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/p;)V

    goto/16 :goto_0

    .line 391
    :cond_8
    if-nez p2, :cond_2

    .line 394
    if-eqz p3, :cond_9

    .line 395
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    new-instance v1, Lcom/creativemobi/DragRacing/social/m;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/DragRacing/social/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/m;)V

    goto/16 :goto_0

    .line 405
    :cond_9
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    invoke-interface {v0}, Lcom/creativemobi/DragRacing/social/d;->a()V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/creativemobi/DragRacing/social/d;)V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/social/a;->j:Lcom/creativemobi/DragRacing/social/d;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/a;->f:Ljava/lang/String;

    const/16 v2, 0x7f99

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/creativemobi/DragRacing/social/d;)V
    .locals 3

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/DragRacing/social/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v1, "oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/a;->f:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/social/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/creativemobi/DragRacing/social/l;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 624
    :goto_1
    return-void

    .line 610
    :cond_1
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/a;->f:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_2
    new-instance v1, Lcom/creativemobi/DragRacing/social/g;

    invoke-direct {v1, p1, v0, p4}, Lcom/creativemobi/DragRacing/social/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/creativemobi/DragRacing/social/d;)V

    invoke-virtual {v1}, Lcom/creativemobi/DragRacing/social/g;->show()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 630
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/creativemobi/DragRacing/social/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/creativemobi/DragRacing/social/a;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 683
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/DragRacing/social/a;->e:J

    .line 687
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Lcom/creativemobi/DragRacing/social/a;->e:J

    return-wide v0
.end method
