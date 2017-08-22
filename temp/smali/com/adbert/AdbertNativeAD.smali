.class public Lcom/adbert/AdbertNativeAD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/AdbertNativeAD$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/adbert/AdbertNativeADListener;

.field private i:Z

.field private j:Lcom/adbert/a/a/b;

.field private k:Lcom/adbert/AdbertNativeAD$a;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->g:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/adbert/AdbertNativeAD;->i:Z

    .line 33
    new-instance v0, Lcom/adbert/AdbertNativeAD$a;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertNativeAD$a;-><init>(Lcom/adbert/AdbertNativeAD;)V

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->k:Lcom/adbert/AdbertNativeAD$a;

    .line 34
    iput-boolean v1, p0, Lcom/adbert/AdbertNativeAD;->l:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->a:Landroid/view/View;

    .line 218
    iput-boolean v1, p0, Lcom/adbert/AdbertNativeAD;->m:Z

    .line 41
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertNativeAD;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertNativeAD;)Lcom/adbert/AdbertNativeAD$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->k:Lcom/adbert/AdbertNativeAD$a;

    return-object v0
.end method

.method static synthetic a(Lcom/adbert/AdbertNativeAD;Lcom/adbert/a/a/b;)Lcom/adbert/a/a/b;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->a:Landroid/view/View;

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 215
    invoke-direct {p0, p1}, Lcom/adbert/AdbertNativeAD;->c(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertNativeAD;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/adbert/AdbertNativeAD;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertNativeAD;Lcom/adbert/a/b/a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/a/b/a;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/adbert/a/b/a;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 149
    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->k:Lcom/adbert/AdbertNativeAD$a;

    invoke-virtual {v1, v0}, Lcom/adbert/AdbertNativeAD$a;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->h:Lcom/adbert/AdbertNativeADListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->h:Lcom/adbert/AdbertNativeADListener;

    invoke-interface {v0, p1}, Lcom/adbert/AdbertNativeADListener;->onReceived(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertNativeAD;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/adbert/AdbertNativeAD;->i:Z

    return p1
.end method

.method private b()V
    .locals 8

    .prologue
    .line 85
    const-string v0, ""

    .line 86
    iget-boolean v1, p0, Lcom/adbert/AdbertNativeAD;->l:Z

    if-eqz v1, :cond_0

    const-string v0, "&testMode=1"

    move-object v6, v0

    .line 87
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/adbert/a/h;

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertNativeAD;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertNativeAD;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/adbert/AdbertNativeAD;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    sget-object v3, Lcom/adbert/a/b/d;->ah:Lcom/adbert/a/b/d;

    invoke-virtual {v3}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adbert/AdbertNativeAD$2;

    invoke-direct {v4, p0}, Lcom/adbert/AdbertNativeAD$2;-><init>(Lcom/adbert/AdbertNativeAD;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    .line 98
    return-void

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/adbert/AdbertNativeAD;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 225
    new-instance v0, Lcom/adbert/b/i;

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/b/i;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adbert/b/i;->loadUrl(Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertNativeAD;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adbert/AdbertNativeAD;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/adbert/AdbertNativeAD;->b()V

    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/adbert/AdbertNativeAD;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->h:Lcom/adbert/AdbertNativeADListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->h:Lcom/adbert/AdbertNativeADListener;

    invoke-interface {v0, p1}, Lcom/adbert/AdbertNativeADListener;->onFailReceived(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertNativeAD;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-boolean v0, v0, Lcom/adbert/a/a/b;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/b;->i:Z

    .line 166
    new-instance v0, Lcom/adbert/a/h;

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertNativeAD;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v4, v4, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v3, v3, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    new-instance v4, Lcom/adbert/AdbertNativeAD$4;

    invoke-direct {v4, p0}, Lcom/adbert/AdbertNativeAD$4;-><init>(Lcom/adbert/AdbertNativeAD;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    .line 175
    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 237
    new-instance v0, Lcom/adbert/AdbertNativeAD$5;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertNativeAD$5;-><init>(Lcom/adbert/AdbertNativeAD;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-boolean v0, p0, Lcom/adbert/AdbertNativeAD;->i:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adbert/a/i;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/adbert/AdbertNativeAD;->b(Landroid/view/View;)V

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/adbert/AdbertNativeAD;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/adbert/AdbertNativeAD;)Lcom/adbert/a/a/b;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 178
    new-instance v0, Lcom/adbert/a/h;

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertNativeAD;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v4, v4, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 179
    invoke-virtual {v4}, Lcom/adbert/a/b/i;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v5, v5, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    const-string v6, ""

    .line 178
    invoke-virtual/range {v0 .. v6}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v3, v3, Lcom/adbert/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/adbert/a/c;

    .line 181
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/adbert/AdbertNativeAD;->i:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    .line 155
    if-ltz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/adbert/AdbertNativeAD;->c()V

    .line 157
    invoke-direct {p0}, Lcom/adbert/AdbertNativeAD;->d()V

    .line 158
    iget-object v1, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/adbert/a/m;->a(Landroid/content/Context;)Lcom/adbert/a/m;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    invoke-virtual {v2}, Lcom/adbert/a/a/b;->a()Lcom/adbert/a/a/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/adbert/a/m;->a(Lcom/adbert/a/a/a;ILcom/adbert/a/m$a;)V

    .line 161
    :cond_0
    return-void
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->j:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->m:Lorg/json/JSONObject;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/adbert/AdbertNativeAD;->i:Z

    return v0
.end method

.method public loadAD()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    sget-object v0, Lcom/adbert/a/b/g;->c:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertNativeAD;->b(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD;->b:Landroid/content/Context;

    new-instance v1, Lcom/adbert/AdbertNativeAD$1;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertNativeAD$1;-><init>(Lcom/adbert/AdbertNativeAD;)V

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/i$a;)V

    goto :goto_0

    .line 71
    :cond_2
    sget-object v0, Lcom/adbert/a/b/g;->e:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertNativeAD;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/adbert/AdbertNativeAD;->a(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method public setADType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->f:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setListener(Lcom/adbert/AdbertNativeADListener;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->h:Lcom/adbert/AdbertNativeADListener;

    .line 48
    return-void
.end method

.method public setPageInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD;->g:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertNativeAD;->l:Z

    .line 38
    return-void
.end method

.method public unregisterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 135
    new-instance v0, Lcom/adbert/AdbertNativeAD$3;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertNativeAD$3;-><init>(Lcom/adbert/AdbertNativeAD;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    :cond_0
    return-void
.end method
