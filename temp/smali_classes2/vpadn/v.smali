.class public Lvpadn/v;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lvpadn/u;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lvpadn/q;

.field private final e:Lvpadn/f;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "PluginManager"

    sput-object v0, Lvpadn/v;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lvpadn/f;Lvpadn/q;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvpadn/v;->a:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    .line 72
    iput-object p2, p0, Lvpadn/v;->d:Lvpadn/q;

    .line 73
    iput-object p1, p0, Lvpadn/v;->e:Lvpadn/f;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/v;->f:Z

    .line 76
    invoke-direct {p0}, Lvpadn/v;->g()V

    .line 78
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    const-string v1, "App"

    const-string v2, "c.App"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    const-string v1, "Geolocation"

    const-string v2, "c.GeoBroker"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    const-string v1, "Device"

    const-string v2, "c.Device"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    const-string v1, "NetworkStatus"

    const-string v2, "c.NetworkManager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    const-string v1, "Notification"

    const-string v2, "c.Notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    const-string v1, "VponSdk"

    const-string v2, "com.vpon.cordova.VponSDKPlugIn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 489
    sget-object v0, Lvpadn/v;->b:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v0, Lvpadn/v;->b:Ljava/lang/String;

    const-string v1, "ERROR: plugin.xml is missing.  Add res/xml/plugins.xml to your project."

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lvpadn/v;->b:Ljava/lang/String;

    const-string v1, "https://git-wip-us.apache.org/repos/asf?p=incubator-cordova-android.git;a=blob;f=framework/res/xml/plugins.xml"

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sget-object v0, Lvpadn/v;->b:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-interface {v0, p1, p2}, Lvpadn/q;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 436
    iget-object v2, v0, Lvpadn/u;->c:Lvpadn/r;

    if-eqz v2, :cond_1

    .line 437
    iget-object v0, v0, Lvpadn/u;->c:Lvpadn/r;

    invoke-virtual {v0, p1, p2}, Lvpadn/r;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_1

    goto :goto_0

    .line 443
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lvpadn/r;
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 354
    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget-object v1, v0, Lvpadn/u;->c:Lvpadn/r;

    .line 358
    if-nez v1, :cond_1

    .line 359
    iget-object v1, p0, Lvpadn/v;->e:Lvpadn/f;

    iget-object v2, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-virtual {v0, v1, v2}, Lvpadn/u;->a(Lvpadn/f;Lvpadn/q;)Lvpadn/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-object v0, Lvpadn/v;->b:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lvpadn/v;->f:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lvpadn/v;->b()V

    .line 166
    iput-boolean v2, p0, Lvpadn/v;->f:Z

    .line 177
    :goto_0
    invoke-virtual {p0}, Lvpadn/v;->d()V

    .line 178
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, v2}, Lvpadn/v;->a(Z)V

    .line 172
    invoke-virtual {p0}, Lvpadn/v;->e()V

    .line 173
    invoke-virtual {p0}, Lvpadn/v;->c()V

    goto :goto_0
.end method

.method public a(Lvpadn/u;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lvpadn/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 393
    iget-object v2, v0, Lvpadn/u;->c:Lvpadn/r;

    if-eqz v2, :cond_0

    .line 394
    iget-object v0, v0, Lvpadn/u;->c:Lvpadn/r;

    invoke-virtual {v0, p1}, Lvpadn/r;->onPause(Z)V

    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, p1}, Lvpadn/v;->a(Ljava/lang/String;)Lvpadn/r;

    move-result-object v1

    .line 318
    if-nez v1, :cond_0

    .line 319
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->c:Lvpadn/w$a;

    invoke-direct {v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 320
    iget-object v2, p0, Lvpadn/v;->e:Lvpadn/f;

    invoke-virtual {v2, v1, p3}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 335
    :goto_0
    return v0

    .line 324
    :cond_0
    :try_start_0
    new-instance v2, Lvpadn/p;

    iget-object v3, p0, Lvpadn/v;->e:Lvpadn/f;

    invoke-direct {v2, p3, v3}, Lvpadn/p;-><init>(Ljava/lang/String;Lvpadn/f;)V

    .line 325
    invoke-virtual {v1, p2, p4, v2}, Lvpadn/r;->execute(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)Z

    move-result v1

    .line 326
    if-nez v1, :cond_1

    .line 327
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->h:Lvpadn/w$a;

    invoke-direct {v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 328
    iget-object v2, p0, Lvpadn/v;->e:Lvpadn/f;

    invoke-virtual {v2, v1, p3}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->i:Lvpadn/w$a;

    invoke-direct {v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 334
    iget-object v2, p0, Lvpadn/v;->e:Lvpadn/f;

    invoke-virtual {v2, v1, p3}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lvpadn/p;->a()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 186
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    sget-object v0, Lvpadn/v;->b:Ljava/lang/String;

    const-string v1, "----->>loadPlugin for HashMap (not in xml)"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lvpadn/v;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    new-instance v3, Lvpadn/u;

    invoke-direct {v3, v1, v0, v4}, Lvpadn/u;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    invoke-virtual {p0, v3}, Lvpadn/v;->a(Lvpadn/u;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "config"

    const-string v3, "xml"

    iget-object v5, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-interface {v5}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 199
    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "plugins"

    const-string v3, "xml"

    iget-object v5, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-interface {v5}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 202
    sget-object v2, Lvpadn/v;->b:Ljava/lang/String;

    const-string v3, "Using plugins.xml instead of config.xml.  plugins.xml will eventually be deprecated"

    invoke-static {v2, v3}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    if-nez v0, :cond_3

    .line 205
    invoke-direct {p0}, Lvpadn/v;->h()V

    .line 276
    :cond_2
    return-void

    .line 209
    :cond_3
    iget-object v2, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 210
    const/4 v0, -0x1

    .line 211
    const-string v3, ""

    const-string v2, ""

    const-string v5, ""

    move v5, v0

    move v0, v4

    .line 215
    :goto_1
    if-eq v5, v1, :cond_2

    .line 216
    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    .line 217
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 219
    const-string v8, "plugin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 220
    const-string v2, "name"

    invoke-interface {v6, v9, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    const-string v2, "value"

    invoke-interface {v6, v9, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    const-string v7, "true"

    const-string v8, "onload"

    invoke-interface {v6, v9, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 225
    new-instance v8, Lvpadn/u;

    invoke-direct {v8, v3, v2, v7}, Lvpadn/u;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    invoke-virtual {p0, v8}, Lvpadn/v;->a(Lvpadn/u;)V

    .line 269
    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_1

    .line 229
    :cond_5
    const-string v8, "url-filter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 230
    iget-object v7, p0, Lvpadn/v;->a:Ljava/util/HashMap;

    const-string v8, "value"

    invoke-interface {v6, v9, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 232
    :cond_6
    const-string v8, "feature"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 236
    const-string v0, "name"

    invoke-interface {v6, v9, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 237
    goto :goto_2

    .line 238
    :cond_7
    const-string v8, "param"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 239
    if-eqz v0, :cond_4

    .line 241
    const-string v7, "name"

    invoke-interface {v6, v9, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    const-string v8, "service"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 243
    const-string v3, "value"

    invoke-interface {v6, v9, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    :cond_8
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 248
    const-string v7, "true"

    const-string v8, "onload"

    invoke-interface {v6, v9, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 249
    new-instance v8, Lvpadn/u;

    invoke-direct {v8, v3, v2, v7}, Lvpadn/u;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    invoke-virtual {p0, v8}, Lvpadn/v;->a(Lvpadn/u;)V

    .line 251
    const-string v3, ""

    .line 252
    const-string v2, ""

    goto :goto_2

    .line 244
    :cond_9
    const-string v8, "package"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 245
    const-string v2, "value"

    invoke-interface {v6, v9, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 257
    :cond_a
    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 259
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 260
    const-string v8, "feature"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 263
    const-string v3, ""

    .line 264
    const-string v2, ""

    move v0, v4

    .line 265
    goto/16 :goto_2

    .line 270
    :catch_0
    move-exception v7

    .line 271
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 272
    :catch_1
    move-exception v7

    .line 273
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 406
    iget-object v2, v0, Lvpadn/u;->c:Lvpadn/r;

    if-eqz v2, :cond_0

    .line 407
    iget-object v0, v0, Lvpadn/u;->c:Lvpadn/r;

    invoke-virtual {v0, p1}, Lvpadn/r;->onResume(Z)V

    goto :goto_0

    .line 410
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lvpadn/v;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 465
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lvpadn/v;->a(Ljava/lang/String;)Lvpadn/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvpadn/r;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 283
    const/4 v2, 0x0

    iput-object v2, v0, Lvpadn/u;->c:Lvpadn/r;

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 292
    iget-boolean v2, v0, Lvpadn/u;->d:Z

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lvpadn/v;->e:Lvpadn/f;

    iget-object v3, p0, Lvpadn/v;->d:Lvpadn/q;

    invoke-virtual {v0, v2, v3}, Lvpadn/u;->a(Lvpadn/f;Lvpadn/q;)Lvpadn/r;

    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    .line 417
    iget-object v2, v0, Lvpadn/u;->c:Lvpadn/r;

    if-eqz v2, :cond_0

    .line 418
    iget-object v0, v0, Lvpadn/u;->c:Lvpadn/r;

    invoke-virtual {v0}, Lvpadn/r;->onDestroy()V

    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lvpadn/v;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 479
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/u;

    iget-object v0, v0, Lvpadn/u;->c:Lvpadn/r;

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lvpadn/r;->onReset()V

    goto :goto_0

    .line 485
    :cond_1
    return-void
.end method
