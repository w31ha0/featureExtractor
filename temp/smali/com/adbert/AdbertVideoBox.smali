.class public Lcom/adbert/AdbertVideoBox;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/adbert/a/c/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/adbert/AdbertVideoBoxListener;

.field private f:Z

.field private g:Lcom/adbert/a/a/b;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/adbert/b/c;

.field private n:Landroid/content/Context;

.field private o:Lcom/adbert/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->d:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/adbert/AdbertVideoBox;->f:Z

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/adbert/AdbertVideoBox;->h:I

    .line 35
    iput v1, p0, Lcom/adbert/AdbertVideoBox;->i:I

    iput v1, p0, Lcom/adbert/AdbertVideoBox;->j:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/adbert/AdbertVideoBox$5;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertVideoBox$5;-><init>(Lcom/adbert/AdbertVideoBox;)V

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->a:Lcom/adbert/a/c/a;

    .line 43
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->a()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->d:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/adbert/AdbertVideoBox;->f:Z

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/adbert/AdbertVideoBox;->h:I

    .line 35
    iput v1, p0, Lcom/adbert/AdbertVideoBox;->i:I

    iput v1, p0, Lcom/adbert/AdbertVideoBox;->j:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/adbert/AdbertVideoBox$5;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertVideoBox$5;-><init>(Lcom/adbert/AdbertVideoBox;)V

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->a:Lcom/adbert/a/c/a;

    .line 49
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->a()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->d:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/adbert/AdbertVideoBox;->f:Z

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/adbert/AdbertVideoBox;->h:I

    .line 35
    iput v1, p0, Lcom/adbert/AdbertVideoBox;->i:I

    iput v1, p0, Lcom/adbert/AdbertVideoBox;->j:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/adbert/AdbertVideoBox$5;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertVideoBox$5;-><init>(Lcom/adbert/AdbertVideoBox;)V

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->a:Lcom/adbert/a/c/a;

    .line 58
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adbert/AdbertVideoBox;->k:Z

    .line 67
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/adbert/AdbertVideoBox;->k:Z

    iget v2, p0, Lcom/adbert/AdbertVideoBox;->h:I

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;ZI)I

    move-result v0

    iput v0, p0, Lcom/adbert/AdbertVideoBox;->h:I

    .line 68
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-boolean v0, v0, Lcom/adbert/a/a/b;->i:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/b;->i:Z

    .line 217
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->d()V

    .line 219
    :cond_0
    sget-object v0, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    invoke-virtual {v0, p1}, Lcom/adbert/a/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->c(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/m;->a(Landroid/content/Context;)Lcom/adbert/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    invoke-virtual {v1}, Lcom/adbert/a/a/b;->a()Lcom/adbert/a/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/adbert/a/m;->a(Lcom/adbert/a/a/a;ILcom/adbert/a/m$a;)V

    .line 221
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    .line 138
    sget-object v0, Lcom/adbert/a/b/g;->g:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/adbert/a/f;

    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "native_video"

    invoke-direct {v0, v1, p2, v2}, Lcom/adbert/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adbert/a/f;->a()Lcom/adbert/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    .line 143
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/adbert/a/a/b;->g:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    if-nez v0, :cond_3

    .line 145
    sget-object v0, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    sget-object v0, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    new-instance v2, Lcom/adbert/AdbertVideoBox$4;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertVideoBox$4;-><init>(Lcom/adbert/AdbertVideoBox;)V

    invoke-virtual {v1, v2}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->n:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertVideoBox;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adbert/AdbertVideoBox;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertVideoBox;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/adbert/AdbertVideoBox;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v1, Lcom/adbert/AdbertVideoBox$2;

    invoke-direct {v1, p0, p1}, Lcom/adbert/AdbertVideoBox$2;-><init>(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertVideoBox;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/adbert/AdbertVideoBox;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 167
    sget-boolean v0, Lcom/adbert/a/i;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->c()V

    .line 170
    :cond_0
    new-instance v0, Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    invoke-virtual {v2}, Lcom/adbert/a/a/b;->a()Lcom/adbert/a/a/a;

    move-result-object v2

    iget v3, p0, Lcom/adbert/AdbertVideoBox;->h:I

    iget-object v4, p0, Lcom/adbert/AdbertVideoBox;->a:Lcom/adbert/a/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adbert/b/c;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;ILcom/adbert/a/c/a;)V

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    .line 171
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/adbert/AdbertVideoBox;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/adbert/b/c;->a(II)V

    .line 172
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->a()V

    .line 175
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertVideoBox;->addView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 238
    new-instance v0, Lcom/adbert/a/h;

    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v4, v4, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v3, v3, Lcom/adbert/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/adbert/a/c;

    .line 241
    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adbert/AdbertVideoBox;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    new-instance v1, Lcom/adbert/AdbertVideoBox$3;

    invoke-direct {v1, p0, p1}, Lcom/adbert/AdbertVideoBox$3;-><init>(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    const-string v1, "ADBERT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    const-string v1, "exise"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exist"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    new-instance v0, Lcom/adbert/b/i;

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->o:Lcom/adbert/b/i;

    .line 185
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->o:Lcom/adbert/b/i;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertVideoBox;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->o:Lcom/adbert/b/i;

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adbert/b/i;->loadUrl(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 244
    new-instance v0, Lcom/adbert/a/h;

    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v5, v4, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    const-string v6, ""

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v3, v3, Lcom/adbert/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/adbert/a/c;

    .line 247
    return-void
.end method

.method static synthetic d(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-boolean v0, v0, Lcom/adbert/a/a/b;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/b;->i:Z

    .line 226
    new-instance v0, Lcom/adbert/a/h;

    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v4, v4, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    iget-object v3, v3, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    new-instance v4, Lcom/adbert/AdbertVideoBox$6;

    invoke-direct {v4, p0}, Lcom/adbert/AdbertVideoBox$6;-><init>(Lcom/adbert/AdbertVideoBox;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    .line 235
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/adbert/AdbertVideoBox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/adbert/AdbertVideoBox;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/adbert/AdbertVideoBox;)Lcom/adbert/AdbertVideoBoxListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->e:Lcom/adbert/AdbertVideoBoxListener;

    return-object v0
.end method

.method static synthetic h(Lcom/adbert/AdbertVideoBox;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->b()V

    return-void
.end method

.method static synthetic i(Lcom/adbert/AdbertVideoBox;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/adbert/AdbertVideoBox;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/adbert/AdbertVideoBox;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adbert/AdbertVideoBox;->i:I

    return v0
.end method

.method static synthetic k(Lcom/adbert/AdbertVideoBox;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adbert/AdbertVideoBox;->j:I

    return v0
.end method

.method static synthetic l(Lcom/adbert/AdbertVideoBox;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adbert/AdbertVideoBox;->d()V

    return-void
.end method

.method static synthetic m(Lcom/adbert/AdbertVideoBox;)Lcom/adbert/a/a/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->g:Lcom/adbert/a/a/b;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->getSeekTo()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->getSeekTo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->d()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->o:Lcom/adbert/b/i;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->o:Lcom/adbert/b/i;

    invoke-virtual {v0}, Lcom/adbert/b/i;->destroy()V

    .line 258
    :cond_2
    return-void
.end method

.method public loadAD()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->removeAllViews()V

    .line 89
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    sget-object v0, Lcom/adbert/a/b/g;->c:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adbert/a/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    sget-object v0, Lcom/adbert/a/b/g;->e:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertVideoBox;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->n:Landroid/content/Context;

    new-instance v1, Lcom/adbert/AdbertVideoBox$1;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertVideoBox$1;-><init>(Lcom/adbert/AdbertVideoBox;)V

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/i$a;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->b()V

    .line 264
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->c()V

    .line 270
    :cond_0
    return-void
.end method

.method public setID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertVideoBox;->c:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setListener(Lcom/adbert/AdbertVideoBoxListener;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox;->e:Lcom/adbert/AdbertVideoBoxListener;

    .line 85
    return-void
.end method

.method public setPageInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertVideoBox;->f:Z

    .line 77
    return-void
.end method
