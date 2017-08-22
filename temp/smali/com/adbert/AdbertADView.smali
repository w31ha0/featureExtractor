.class public Lcom/adbert/AdbertADView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/AdbertADView$MyHandler;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Z

.field private C:Lcom/adbert/AdbertListener;

.field private D:I

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Lcom/adbert/b/d;

.field private J:Lcom/adbert/a/a;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Lcom/adbert/b/i;

.field a:Lcom/google/android/gms/ads/AdSize;

.field b:Lcom/adbert/AdbertOrientation;

.field c:Lcom/adbert/b/f;

.field d:Lcom/google/android/gms/ads/AdView;

.field e:Lcom/adbert/b/a;

.field f:Landroid/widget/FrameLayout;

.field g:Landroid/content/BroadcastReceiver;

.field h:Lcom/adbert/a/c/a;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/adbert/AdbertADView$MyHandler;

.field private w:Lcom/adbert/a/a/a;

.field private x:Lcom/adbert/b/g;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->o:Z

    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->p:Z

    .line 70
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->q:Z

    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->r:Z

    .line 71
    iput v2, p0, Lcom/adbert/AdbertADView;->u:I

    .line 72
    new-instance v0, Lcom/adbert/AdbertADView$MyHandler;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$MyHandler;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->v:Lcom/adbert/AdbertADView$MyHandler;

    .line 73
    new-instance v0, Lcom/adbert/a/a/a;

    invoke-direct {v0}, Lcom/adbert/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    .line 78
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->B:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/adbert/AdbertADView;->D:I

    .line 81
    iput v1, p0, Lcom/adbert/AdbertADView;->E:I

    .line 83
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->G:Z

    .line 84
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->H:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->K:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->L:Z

    .line 190
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/adbert/AdbertADView;->a:Lcom/google/android/gms/ads/AdSize;

    .line 218
    sget-object v0, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    iput-object v0, p0, Lcom/adbert/AdbertADView;->b:Lcom/adbert/AdbertOrientation;

    .line 947
    new-instance v0, Lcom/adbert/AdbertADView$12;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$12;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->g:Landroid/content/BroadcastReceiver;

    .line 1127
    new-instance v0, Lcom/adbert/AdbertADView$14;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$14;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->h:Lcom/adbert/a/c/a;

    .line 154
    iput-object p1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->a()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->o:Z

    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->p:Z

    .line 70
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->q:Z

    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->r:Z

    .line 71
    iput v2, p0, Lcom/adbert/AdbertADView;->u:I

    .line 72
    new-instance v0, Lcom/adbert/AdbertADView$MyHandler;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$MyHandler;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->v:Lcom/adbert/AdbertADView$MyHandler;

    .line 73
    new-instance v0, Lcom/adbert/a/a/a;

    invoke-direct {v0}, Lcom/adbert/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    .line 78
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->B:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/adbert/AdbertADView;->D:I

    .line 81
    iput v1, p0, Lcom/adbert/AdbertADView;->E:I

    .line 83
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->G:Z

    .line 84
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->H:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->K:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->L:Z

    .line 190
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/adbert/AdbertADView;->a:Lcom/google/android/gms/ads/AdSize;

    .line 218
    sget-object v0, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    iput-object v0, p0, Lcom/adbert/AdbertADView;->b:Lcom/adbert/AdbertOrientation;

    .line 947
    new-instance v0, Lcom/adbert/AdbertADView$12;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$12;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->g:Landroid/content/BroadcastReceiver;

    .line 1127
    new-instance v0, Lcom/adbert/AdbertADView$14;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$14;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->h:Lcom/adbert/a/c/a;

    .line 136
    iput-object p1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->a()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->o:Z

    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->p:Z

    .line 70
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->q:Z

    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->r:Z

    .line 71
    iput v2, p0, Lcom/adbert/AdbertADView;->u:I

    .line 72
    new-instance v0, Lcom/adbert/AdbertADView$MyHandler;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$MyHandler;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->v:Lcom/adbert/AdbertADView$MyHandler;

    .line 73
    new-instance v0, Lcom/adbert/a/a/a;

    invoke-direct {v0}, Lcom/adbert/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    .line 78
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->B:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/adbert/AdbertADView;->D:I

    .line 81
    iput v1, p0, Lcom/adbert/AdbertADView;->E:I

    .line 83
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->G:Z

    .line 84
    iput-boolean v1, p0, Lcom/adbert/AdbertADView;->H:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertADView;->K:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->L:Z

    .line 190
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/adbert/AdbertADView;->a:Lcom/google/android/gms/ads/AdSize;

    .line 218
    sget-object v0, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    iput-object v0, p0, Lcom/adbert/AdbertADView;->b:Lcom/adbert/AdbertOrientation;

    .line 947
    new-instance v0, Lcom/adbert/AdbertADView$12;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$12;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->g:Landroid/content/BroadcastReceiver;

    .line 1127
    new-instance v0, Lcom/adbert/AdbertADView$14;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$14;-><init>(Lcom/adbert/AdbertADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->h:Lcom/adbert/a/c/a;

    .line 145
    iput-object p1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->a()V

    goto :goto_0
.end method

.method private varargs a(I[Ljava/lang/Object;)Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 922
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/adbert/AdbertActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 923
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 924
    const-string v0, "datas"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v4}, Lcom/adbert/a/a;->h()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 925
    sget-object v0, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    invoke-virtual {v0}, Lcom/adbert/a/b/a;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 926
    const-string v3, "url"

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/adbert/AdbertADView;->g:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v6, v6, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 942
    const-string v0, "videoInfo"

    iget-object v3, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 943
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 944
    return-object v1

    .line 927
    :cond_1
    sget-object v0, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    invoke-virtual {v0}, Lcom/adbert/a/b/a;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 928
    const-string v3, "top"

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 929
    const-string v3, "seekTo"

    aget-object v0, p2, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 930
    const-string v3, "fullScreen"

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 931
    array-length v0, p2

    if-le v0, v5, :cond_2

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 933
    :cond_2
    const-string v3, "adbertOrientation"

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 934
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->t:Z

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "hideCI"

    iget-boolean v3, p0, Lcom/adbert/AdbertADView;->t:Z

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertADView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertADView$MyHandler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->v:Lcom/adbert/AdbertADView$MyHandler;

    return-object v0
.end method

.method static synthetic a(Lcom/adbert/AdbertADView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/adbert/a/h;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->H:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/adbert/a/i;->c:Z

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->r:Z

    .line 458
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    sget-object v0, Lcom/adbert/a/b/d;->r:Lcom/adbert/a/b/d;

    .line 459
    invoke-virtual {v0}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0}, Lcom/adbert/a/a;->g()Z

    move-result v5

    iget-boolean v6, p0, Lcom/adbert/AdbertADView;->r:Z

    iget-object v7, p0, Lcom/adbert/AdbertADView;->K:Ljava/lang/String;

    move-object v0, p1

    .line 458
    invoke-virtual/range {v0 .. v7}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {p1}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/adbert/a/b/d;->g:Lcom/adbert/a/b/d;

    invoke-virtual {v0}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adbert/a/i;->d(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->k()V

    .line 169
    new-instance v0, Lcom/adbert/a/a;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    .line 170
    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0}, Lcom/adbert/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adbert/a/a;->a(Z)V

    .line 171
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->b()V

    .line 172
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 739
    if-eq p1, v4, :cond_0

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_1

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 742
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->c()V

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adbert/b/a;->setVisibility(I)V

    .line 747
    :cond_2
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->h()V

    .line 748
    if-ne p1, v4, :cond_7

    .line 749
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->n()V

    .line 750
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-nez v0, :cond_3

    .line 751
    new-instance v0, Lcom/adbert/b/g;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v2}, Lcom/adbert/a/a;->e()I

    move-result v2

    iget-object v3, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v3}, Lcom/adbert/a/a;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/b/g;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    .line 753
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    new-instance v1, Lcom/adbert/AdbertADView$9;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertADView$9;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v0, v1}, Lcom/adbert/b/g;->setListener(Lcom/adbert/b/g$a;)V

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 807
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->i()V

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    .line 810
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 811
    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    :cond_5
    iget-object v1, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v1, v0}, Lcom/adbert/b/g;->setUrl(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 819
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0, v6}, Lcom/adbert/b/g;->setVisibility(I)V

    .line 821
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->f:Landroid/widget/FrameLayout;

    .line 822
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 824
    iget-object v1, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    iget-object v0, p0, Lcom/adbert/AdbertADView;->f:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 826
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->t:Z

    if-eqz v0, :cond_6

    .line 827
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0, v4}, Lcom/adbert/b/g;->setZOrderOnTop(Z)V

    .line 834
    :cond_6
    :goto_0
    return-void

    .line 828
    :cond_7
    if-ne p1, v2, :cond_6

    .line 831
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->j()V

    goto :goto_0
.end method

.method private a(ILandroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1071
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1073
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1074
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1075
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 1076
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_useTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1077
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1078
    invoke-direct {p0, v5}, Lcom/adbert/AdbertADView;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1079
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1075
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1081
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1086
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 1087
    new-instance v0, Lcom/adbert/AdbertADView$13;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$13;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1101
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-ge v1, v0, :cond_3

    .line 1102
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1107
    :cond_3
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 655
    new-instance v0, Lcom/adbert/AdbertADView$7;

    invoke-direct {v0, p0, p1}, Lcom/adbert/AdbertADView$7;-><init>(Lcom/adbert/AdbertADView;I)V

    .line 684
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    iget-object v3, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    iget-object v4, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v4

    invoke-virtual {v4, p2, v2}, Lcom/adbert/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v0

    invoke-virtual {v0, p3, v3}, Lcom/adbert/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertADView;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adbert/AdbertADView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertADView;Lcom/adbert/a/b/a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/a/b/a;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/adbert/a/b/a;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 839
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 840
    if-eqz p2, :cond_0

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 842
    :cond_0
    invoke-virtual {p1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 843
    iget-object v1, p0, Lcom/adbert/AdbertADView;->v:Lcom/adbert/AdbertADView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/adbert/AdbertADView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 847
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 848
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    sget-object v1, Lcom/adbert/a/b/a;->f:Lcom/adbert/a/b/a;

    invoke-direct {p0, v1, v0}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/a/b/a;Landroid/os/Bundle;)V

    .line 850
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertADView;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/adbert/AdbertADView;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/adbert/AdbertADView;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/adbert/AdbertADView;->D:I

    return p1
.end method

.method static synthetic b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 177
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 180
    new-instance v0, Lcom/adbert/a/n;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Lcom/adbert/a/n;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 182
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 183
    return-void
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 900
    sget-object v0, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    invoke-virtual {v0, p1}, Lcom/adbert/a/b/i;->b(I)Lcom/adbert/a/b/i;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-boolean v1, v1, Lcom/adbert/a/a/a;->n:Z

    if-nez v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/adbert/a/a/a;->n:Z

    .line 904
    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    new-instance v3, Lcom/adbert/AdbertADView$10;

    invoke-direct {v3, p0}, Lcom/adbert/AdbertADView$10;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-static {v1, v2, v3}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/m;->a(Landroid/content/Context;)Lcom/adbert/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    new-instance v2, Lcom/adbert/AdbertADView$11;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertADView$11;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/adbert/a/m;->a(Lcom/adbert/a/a/a;ILcom/adbert/a/m$a;)V

    .line 919
    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertADView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adbert/AdbertADView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 853
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 854
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v1, Lcom/adbert/a/b/a;->g:Lcom/adbert/a/b/a;

    invoke-direct {p0, v1, v0}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/a/b/a;Landroid/os/Bundle;)V

    .line 856
    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertADView;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/adbert/AdbertADView;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/adbert/AdbertADView;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/adbert/AdbertADView;->E:I

    return p1
.end method

.method static synthetic c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView;->M:Lcom/adbert/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/adbert/AdbertADView;->M:Lcom/adbert/b/i;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adbert/b/i;->loadUrl(Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->F:Z

    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 990
    :cond_0
    sget-object v0, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    invoke-virtual {v0}, Lcom/adbert/a/b/a;->a()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adbert/AdbertADView;->a(I[Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 992
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adbert/AdbertADView;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/adbert/AdbertADView;->n:Z

    return p1
.end method

.method private d()V
    .locals 6

    .prologue
    .line 404
    sget-boolean v0, Lcom/adbert/a/i;->d:Z

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Lcom/adbert/b/i;

    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adbert/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->M:Lcom/adbert/b/i;

    .line 406
    iget-object v0, p0, Lcom/adbert/AdbertADView;->M:Lcom/adbert/b/i;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 408
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->setGravity(I)V

    .line 410
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    .line 411
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->setObjSize(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/adbert/AdbertADView$2;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertADView$2;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    .line 424
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 426
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->setObjSize(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    new-instance v1, Lcom/adbert/AdbertADView$3;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertADView$3;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v0, Lcom/adbert/b/d;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->h:Lcom/adbert/a/c/a;

    iget-object v3, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/b/d;-><init>(Landroid/content/Context;Lcom/adbert/a/c/a;Lcom/adbert/a/b/b;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    .line 443
    iget-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->setObjSize(Landroid/view/View;)V

    .line 446
    new-instance v0, Lcom/adbert/b/f;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v2}, Lcom/adbert/a/a;->e()I

    move-result v2

    int-to-double v2, v2

    sget-wide v4, Lcom/adbert/a/i;->e:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/adbert/b/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->c:Lcom/adbert/b/f;

    .line 447
    iget-object v0, p0, Lcom/adbert/AdbertADView;->c:Lcom/adbert/b/f;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/adbert/AdbertADView;->c:Lcom/adbert/b/f;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adbert/b/f;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/adbert/AdbertADView;->c:Lcom/adbert/b/f;

    invoke-virtual {v0}, Lcom/adbert/b/f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    return-void
.end method

.method static synthetic d(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->j()V

    return-void
.end method

.method static synthetic d(Lcom/adbert/AdbertADView;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adbert/AdbertADView;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/adbert/AdbertADView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adbert/AdbertADView;->setDatas(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1060
    invoke-static {}, Lcom/adbert/a/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {p1}, Lcom/adbert/a/i;->g(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1062
    invoke-static {v0}, Lcom/adbert/a/i;->g(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1063
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    .line 1066
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/adbert/AdbertADView;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/adbert/AdbertADView;->u:I

    return p1
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 617
    iget-boolean v3, p0, Lcom/adbert/AdbertADView;->q:Z

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    invoke-static {v3, v4}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;)V

    .line 619
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->q:Z

    .line 621
    :cond_0
    iget-boolean v3, p0, Lcom/adbert/AdbertADView;->H:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/adbert/a/i;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    sget-object v3, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v3}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adbert/AdbertADView;->a(Ljava/lang/String;)V

    .line 626
    :cond_1
    iget-object v3, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v4, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v3, v4, :cond_4

    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v4, v4, Lcom/adbert/a/a/a;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v4, v4, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 627
    invoke-static {v3}, Lcom/adbert/a/i;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    .line 634
    :cond_2
    :goto_0
    if-nez v2, :cond_6

    .line 635
    sget-object v0, Lcom/adbert/a/b/g;->m:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    .line 646
    :cond_3
    :goto_1
    return-void

    .line 629
    :cond_4
    iget-object v3, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v4, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    if-ne v3, v4, :cond_5

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v4, v4, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/adbert/a/i;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    .line 630
    goto :goto_0

    .line 631
    :cond_5
    iget-object v3, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v4, Lcom/adbert/a/b/b;->f:Lcom/adbert/a/b/b;

    if-ne v3, v4, :cond_2

    move v2, v1

    .line 632
    goto :goto_0

    .line 637
    :cond_6
    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v3, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v2, v3, :cond_8

    .line 638
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 639
    :goto_2
    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adbert/AdbertADView;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 638
    goto :goto_2

    .line 640
    :cond_8
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_9

    .line 641
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->f()V

    goto :goto_1

    .line 642
    :cond_9
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->f:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_3

    .line 643
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->f()V

    goto :goto_1
.end method

.method static synthetic e(Lcom/adbert/AdbertADView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adbert/AdbertADView;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/adbert/AdbertADView;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->F:Z

    return v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 696
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->f:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_2

    .line 698
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    if-nez v0, :cond_1

    .line 699
    new-instance v0, Lcom/adbert/b/a;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v3, p0, Lcom/adbert/AdbertADView;->h:Lcom/adbert/a/c/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/b/a;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;Lcom/adbert/a/c/a;)V

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->x:Ljava/lang/String;

    new-array v2, v4, [Z

    aput-boolean v4, v2, v5

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/adbert/b/a;->a(Ljava/lang/String;ZI[Z)Lcom/adbert/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    .line 701
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 702
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->e()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 703
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->f()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 708
    :goto_0
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->n()V

    .line 736
    :cond_0
    :goto_1
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adbert/b/a;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/adbert/AdbertADView;->e:Lcom/adbert/b/a;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adbert/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->c()V

    .line 711
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/adbert/b/d;->a(Ljava/lang/String;Lcom/adbert/a/a/a;)V

    goto :goto_1

    .line 716
    :cond_3
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v0

    new-instance v1, Lcom/adbert/AdbertADView$8;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertADView$8;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v0, v1}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    .line 733
    invoke-virtual {v0, v1}, Lcom/adbert/a/c;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/adbert/AdbertADView;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->p:Z

    return v0
.end method

.method private g()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 859
    iget-object v2, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-boolean v2, v2, Lcom/adbert/a/a/a;->l:Z

    if-eqz v2, :cond_2

    .line 860
    iget-boolean v2, p0, Lcom/adbert/AdbertADView;->s:Z

    if-nez v2, :cond_0

    .line 861
    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->s:Z

    .line 876
    :goto_0
    return v0

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 865
    const-string v3, "lastRunCPV"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 866
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 867
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 868
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 869
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 870
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastRunCPV"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 871
    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->s:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 876
    goto :goto_0
.end method

.method static synthetic g(Lcom/adbert/AdbertADView;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->l()Z

    move-result v0

    return v0
.end method

.method private getDatas()V
    .locals 5

    .prologue
    .line 468
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    const/4 v0, 0x0

    iput v0, p0, Lcom/adbert/AdbertADView;->u:I

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    .line 471
    new-instance v1, Lcom/adbert/a/h;

    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    .line 472
    const-string v0, ""

    .line 473
    iget-boolean v2, p0, Lcom/adbert/AdbertADView;->L:Z

    if-eqz v2, :cond_0

    const-string v0, "&testMode=1"

    .line 474
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    sget-object v3, Lcom/adbert/a/b/d;->F:Lcom/adbert/a/b/d;

    invoke-virtual {v3}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adbert/AdbertADView$4;

    invoke-direct {v4, p0}, Lcom/adbert/AdbertADView$4;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_1
    sget-object v0, Lcom/adbert/a/b/g;->e:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 882
    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 884
    iput-object v2, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    .line 886
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->getDatas()V

    return-void
.end method

.method static synthetic i(Lcom/adbert/AdbertADView;)Lcom/adbert/b/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->pause()V

    .line 891
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->stopPlayback()V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 896
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/adbert/AdbertADView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1001
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->F:Z

    if-eqz v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1004
    :cond_0
    sget-object v0, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    invoke-virtual {v0}, Lcom/adbert/a/b/a;->a()I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-boolean v1, v1, Lcom/adbert/a/a/a;->m:Z

    if-nez v1, :cond_1

    .line 1007
    new-array v1, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/adbert/AdbertADView;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/adbert/AdbertADView;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/adbert/AdbertADView;->b:Lcom/adbert/AdbertOrientation;

    invoke-virtual {v2}, Lcom/adbert/AdbertOrientation;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/adbert/AdbertADView;->a(I[Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 1012
    :goto_1
    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iput-boolean v4, v1, Lcom/adbert/a/a/a;->m:Z

    .line 1013
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->i()V

    .line 1014
    iget-object v1, p0, Lcom/adbert/AdbertADView;->c:Lcom/adbert/b/f;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/adbert/b/f;->setVisibility(I)V

    .line 1015
    iget-object v1, p0, Lcom/adbert/AdbertADView;->A:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1017
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1018
    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1009
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/adbert/AdbertADView;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v2}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v2, v2, -0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/adbert/AdbertADView;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/adbert/AdbertADView;->b:Lcom/adbert/AdbertOrientation;

    .line 1010
    invoke-virtual {v2}, Lcom/adbert/AdbertOrientation;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1009
    invoke-direct {p0, v0, v1}, Lcom/adbert/AdbertADView;->a(I[Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic k(Lcom/adbert/AdbertADView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ADBERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    const/16 v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/others/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/adbert/AdbertADView;->a(ILandroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1056
    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/video/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/adbert/AdbertADView;->a(ILandroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method static synthetic l(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->n()V

    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0}, Lcom/adbert/a/a;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->g()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1122
    const/4 v0, 0x1

    .line 1124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1140
    sget-object v0, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->a(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/adbert/AdbertADView;->I:Lcom/adbert/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adbert/b/d;->setVisibility(I)V

    .line 1142
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->n()V

    .line 1143
    return-void
.end method

.method static synthetic m(Lcom/adbert/AdbertADView;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->B:Z

    return v0
.end method

.method static synthetic n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->C:Lcom/adbert/AdbertListener;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->B:Z

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/adbert/AdbertADView;->c:Lcom/adbert/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adbert/b/f;->setVisibility(I)V

    .line 1149
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/adbert/AdbertADView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/adbert/AdbertADView;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/adbert/AdbertADView;->u:I

    return v0
.end method

.method static synthetic q(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->m()V

    return-void
.end method

.method private setDatas(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Lcom/adbert/a/a/a;

    invoke-direct {v0}, Lcom/adbert/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    .line 589
    :try_start_0
    new-instance v0, Lcom/adbert/a/d;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v2}, Lcom/adbert/a/a;->g()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/adbert/a/d;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p1}, Lcom/adbert/a/d;->a(Ljava/lang/String;)Lcom/adbert/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/d;->a()Lcom/adbert/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    .line 590
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    if-nez v0, :cond_1

    .line 592
    sget-object v0, Lcom/adbert/a/b/g;->i:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/adbert/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    new-instance v2, Lcom/adbert/AdbertADView$6;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertADView$6;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->c(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 606
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    invoke-virtual {v2}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 609
    :cond_3
    sget-object v1, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setObjSize(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 387
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->e()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->f()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->F:Z

    .line 311
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->pause()V

    .line 313
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->stopPlayback()V

    .line 314
    iput-object v1, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->p:Z

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    iput-object v1, p0, Lcom/adbert/AdbertADView;->z:Landroid/graphics/Bitmap;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView;->M:Lcom/adbert/b/i;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/adbert/AdbertADView;->M:Lcom/adbert/b/i;

    invoke-virtual {v0}, Lcom/adbert/b/i;->destroy()V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_4

    .line 327
    iget v0, p0, Lcom/adbert/AdbertADView;->u:I

    if-lez v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget v2, p0, Lcom/adbert/AdbertADView;->u:I

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;I)V

    .line 330
    :cond_4
    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->removeAllViews()V

    .line 331
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/adbert/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hideCI()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->t:Z

    .line 384
    return-void
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->p:Z

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->pause()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->p:Z

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adbert/b/g;->setAlpha(F)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->i()V

    .line 345
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1111
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1112
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0}, Lcom/adbert/a/a;->c()I

    move-result v0

    .line 1114
    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->d()I

    move-result v1

    .line 1115
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1116
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1115
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1118
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->n:Z

    .line 278
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->pause()V

    .line 282
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adbert/AdbertADView;->u:I

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 289
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->n:Z

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->n:Z

    .line 295
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->p:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/adbert/AdbertADView;->w:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    .line 297
    invoke-virtual {v0}, Lcom/adbert/b/g;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->a(I)V

    .line 299
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->n()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 306
    :cond_1
    return-void
.end method

.method public setAPPID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->setMediationAPPID(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setAdmob()V
    .locals 3

    .prologue
    .line 564
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    .line 565
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/adbert/a/b/d;->af:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 567
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    iget-object v1, p0, Lcom/adbert/AdbertADView;->a:Lcom/google/android/gms/ads/AdSize;

    iget-object v2, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adbert/a/a;->b(I)V

    .line 568
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->addView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->c()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 570
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1}, Lcom/adbert/a/a;->d()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 571
    iget-object v0, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 572
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/adbert/AdbertADView$5;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertADView$5;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 583
    iget-object v1, p0, Lcom/adbert/AdbertADView;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 584
    return-void
.end method

.method public setBannerSize(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0, p1}, Lcom/adbert/a/a;->b(I)V

    .line 188
    return-void
.end method

.method public setBannerSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 6

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adbert/AdbertADView;->a:Lcom/google/android/gms/ads/AdSize;

    .line 195
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v2, v0}, Lcom/adbert/a/a;->b(I)V

    .line 198
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    if-eq p1, v2, :cond_0

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x401999999999999aL    # 6.4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0, v1}, Lcom/adbert/a/a;->a(I)V

    goto :goto_0
.end method

.method public setExpandVideo(Lcom/adbert/ExpandVideoPosition;)V
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/adbert/ExpandVideoPosition;->TOP:Lcom/adbert/ExpandVideoPosition;

    if-ne p1, v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->m:Z

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->m:Z

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/adbert/AdbertADView;->o:Z

    .line 216
    return-void
.end method

.method public setListener(Lcom/adbert/AdbertListener;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/adbert/AdbertADView;->C:Lcom/adbert/AdbertListener;

    .line 235
    return-void
.end method

.method public setMediationAPPID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    const-string/jumbo v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->H:Z

    .line 255
    :cond_0
    return-void
.end method

.method public setMode(Lcom/adbert/AdbertOrientation;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    iput-object p1, p0, Lcom/adbert/AdbertADView;->b:Lcom/adbert/AdbertOrientation;

    .line 223
    sget-object v2, Lcom/adbert/AdbertOrientation;->LAND:Lcom/adbert/AdbertOrientation;

    if-ne p1, v2, :cond_1

    .line 224
    iget-object v1, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v1, v0}, Lcom/adbert/a/a;->a(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    sget-object v2, Lcom/adbert/AdbertOrientation;->PORT:Lcom/adbert/AdbertOrientation;

    if-ne p1, v2, :cond_2

    .line 226
    iget-object v0, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v0, v1}, Lcom/adbert/a/a;->a(Z)V

    goto :goto_0

    .line 227
    :cond_2
    sget-object v2, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    if-ne p1, v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    iget-object v3, p0, Lcom/adbert/AdbertADView;->J:Lcom/adbert/a/a;

    invoke-virtual {v3}, Lcom/adbert/a/a;->g()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/adbert/a/a;->a(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setNonMediationAPPID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    .line 239
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->H:Z

    .line 241
    return-void
.end method

.method public setPageInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adbert/AdbertADView;->K:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->L:Z

    .line 93
    return-void
.end method

.method public showView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 354
    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->p:Z

    if-nez v0, :cond_1

    .line 355
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->p:Z

    .line 356
    iget v0, p0, Lcom/adbert/AdbertADView;->D:I

    if-ltz v0, :cond_2

    .line 357
    iget v0, p0, Lcom/adbert/AdbertADView;->D:I

    .line 358
    const/4 v1, -0x1

    iput v1, p0, Lcom/adbert/AdbertADView;->D:I

    .line 359
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 360
    iput v0, v1, Landroid/os/Message;->what:I

    .line 361
    sget-object v2, Lcom/adbert/a/b/a;->a:Lcom/adbert/a/b/a;

    invoke-virtual {v2}, Lcom/adbert/a/b/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    sget-object v2, Lcom/adbert/a/b/d;->q:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/adbert/AdbertADView;->E:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView;->v:Lcom/adbert/AdbertADView$MyHandler;

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/adbert/AdbertADView;->x:Lcom/adbert/b/g;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/adbert/b/g;->setAlpha(F)V

    .line 373
    :cond_3
    iput-boolean v2, p0, Lcom/adbert/AdbertADView;->n:Z

    .line 374
    invoke-virtual {p0}, Lcom/adbert/AdbertADView;->resume()V

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertADView;->setVisibility(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adbert/AdbertADView;->G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertADView;->G:Z

    .line 262
    invoke-direct {p0}, Lcom/adbert/AdbertADView;->d()V

    .line 263
    iget-object v0, p0, Lcom/adbert/AdbertADView;->i:Landroid/content/Context;

    new-instance v1, Lcom/adbert/AdbertADView$1;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertADView$1;-><init>(Lcom/adbert/AdbertADView;)V

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/i$a;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adbert/AdbertADView;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :cond_2
    sget-object v0, Lcom/adbert/a/b/g;->c:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertADView;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
