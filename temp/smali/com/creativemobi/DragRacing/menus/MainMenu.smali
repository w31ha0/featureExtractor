.class public Lcom/creativemobi/DragRacing/menus/MainMenu;
.super Landroid/app/Activity;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/d;
.implements Lcom/tapjoy/m;


# static fields
.field public static a:Z

.field protected static b:I

.field protected static c:J

.field public static d:Lcom/creativemobi/DragRacing/menus/MainMenu;

.field public static e:Lcom/creativemobi/DragRacing/billing/b;

.field private static h:Landroid/os/Handler;

.field private static j:Lcom/google/ads/AdView;

.field private static k:Landroid/view/View;

.field private static l:Landroid/widget/RelativeLayout;


# instance fields
.field private f:Lcom/creativemobi/engine/bp;

.field private g:Z

.field private i:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->g:Z

    return-void
.end method

.method private a(II)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 469
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%lang%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%lang%"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%region%"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 473
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 475
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060005

    new-instance v4, Lcom/creativemobi/DragRacing/menus/c;

    invoke-direct {v4, p0, v0}, Lcom/creativemobi/DragRacing/menus/c;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/creativemobi/DragRacing/menus/MainMenu;)Lcom/creativemobi/engine/bp;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    sput p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->b:I

    .line 662
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/b;->c()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 665
    :goto_0
    :try_start_0
    sget-object v1, Lcom/creativemobi/DragRacing/menus/MainMenu;->h:Landroid/os/Handler;

    new-instance v2, Lcom/creativemobi/DragRacing/menus/d;

    invoke-direct {v2, v0, p0}, Lcom/creativemobi/DragRacing/menus/d;-><init>(ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 662
    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/creativemobi/DragRacing/menus/MainMenu;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->g:Z

    return p1
.end method

.method static synthetic b(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->k:Landroid/view/View;

    return-object p0
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 657
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    .line 658
    return-void

    .line 657
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 733
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/b;->c()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/creativemobi/DragRacing/menus/MainMenu;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->g:Z

    return v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/creativemobi/DragRacing/menus/MainMenu;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->i:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic d()Lcom/google/ads/AdView;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->j:Lcom/google/ads/AdView;

    return-object v0
.end method

.method static synthetic e()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/creativemobi/engine/bp;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 685
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->h:Landroid/os/Handler;

    new-instance v1, Lcom/creativemobi/DragRacing/menus/a;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/DragRacing/menus/a;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    return-void
.end method

.method public final a(Lcom/google/ads/b;)V
    .locals 3

    .prologue
    .line 711
    const-string v0, "AdMob Banner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    .line 713
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    new-instance v1, Lcom/creativemobi/DragRacing/menus/b;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/DragRacing/menus/b;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 523
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/DragRacing/menus/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/creativemobi/DragRacing/menus/e;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 597
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 152
    if-eqz p1, :cond_0

    const-string v0, "Checking available bonuses..."

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-static {}, Lcom/tapjoy/r;->a()Lcom/tapjoy/r;

    new-instance v0, Lcom/creativemobi/DragRacing/menus/h;

    invoke-direct {v0, p0, p1}, Lcom/creativemobi/DragRacing/menus/h;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Z)V

    invoke-static {v0}, Lcom/tapjoy/r;->a(Lcom/tapjoy/t;)V

    .line 187
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 699
    const-string v0, "TapJoy Banner"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    .line 701
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->finish()V

    .line 306
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sput-object p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->h:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 93
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 98
    new-instance v0, Lcom/creativemobi/engine/bp;

    invoke-direct {v0, p0}, Lcom/creativemobi/engine/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    .line 99
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->setContentView(Landroid/view/View;)V

    .line 101
    new-instance v0, Lcom/creativemobi/DragRacing/billing/b;

    invoke-direct {v0, p0}, Lcom/creativemobi/DragRacing/billing/b;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    .line 103
    invoke-static {p0}, Lcom/creativemobi/engine/SoundManager;->a(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->setVolumeControlStream(I)V

    .line 107
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/b;->c()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v1, Lcom/google/ads/f;->a:Lcom/google/ads/f;

    const-string v2, "a14b51eba6d1b81"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/f;Ljava/lang/String;)V

    .line 109
    sput-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->j:Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    .line 111
    new-instance v0, Lcom/google/ads/c;

    invoke-direct {v0}, Lcom/google/ads/c;-><init>()V

    .line 118
    invoke-virtual {v0}, Lcom/google/ads/c;->a()V

    .line 119
    sget-object v1, Lcom/creativemobi/DragRacing/menus/MainMenu;->j:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->a(Lcom/google/ads/c;)V

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->i:Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->l:Landroid/widget/RelativeLayout;

    .line 131
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->l:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/creativemobi/DragRacing/menus/MainMenu;->j:Lcom/google/ads/AdView;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_0
    invoke-static {v6}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    .line 141
    const-string v0, "d4483c02-f03e-4005-a0f5-3a3edc8ebae7"

    const-string v1, "Wjkr3QHBMy7PseYAKD3Q"

    invoke-static {p0, v0, v1}, Lcom/tapjoy/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v5, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 371
    sparse-switch p1, :sswitch_data_0

    .line 464
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 373
    :sswitch_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->h()Ljava/lang/String;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    const-string v0, ""

    .line 377
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 380
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 381
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 382
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 383
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 385
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 386
    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    invoke-virtual {v3, v8, v8, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 389
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 391
    new-array v5, v5, [Landroid/text/InputFilter;

    .line 392
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    .line 393
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 394
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    const-string v5, "Player name"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :cond_1
    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 400
    const/16 v5, 0x60

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 401
    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setId(I)V

    .line 403
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 410
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 411
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 413
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 414
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setId(I)V

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Change"

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 421
    const-string v5, "Cancel"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v5, Lcom/creativemobi/DragRacing/menus/f;

    invoke-direct {v5, p0}, Lcom/creativemobi/DragRacing/menus/f;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    const-string v0, "Create profile"

    .line 437
    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v2}, Lcom/creativemobi/engine/bp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Change name"

    .line 439
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 441
    new-instance v1, Lcom/creativemobi/DragRacing/menus/g;

    invoke-direct {v1, p0, v4, v0}, Lcom/creativemobi/DragRacing/menus/g;-><init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 416
    :cond_3
    const-string v0, "Create"

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 458
    :sswitch_1
    const v0, 0x7f060002

    const v1, 0x7f060003

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 461
    :sswitch_2
    const/high16 v0, 0x7f060000

    const v1, 0x7f060001

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 194
    :try_start_0
    invoke-static {p0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->p()V

    .line 200
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->d()V

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->l()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->n()V

    .line 208
    :cond_0
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->d()V

    .line 210
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/b;->finalize()V

    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 216
    return-void

    .line 195
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 316
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 317
    if-ne p1, v2, :cond_1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->finish()V

    .line 321
    :cond_0
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_2

    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/w;->a(I)V

    .line 326
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/w;->b(I)V

    .line 341
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 288
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->d()V

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->l()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->n()V

    .line 297
    new-instance v0, Lcom/creativemobi/engine/bp;

    invoke-direct {v0, p0}, Lcom/creativemobi/engine/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    .line 298
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->setContentView(Landroid/view/View;)V

    .line 300
    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 220
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->b()V

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 601
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 603
    if-ne p1, v2, :cond_1

    .line 604
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->h()Ljava/lang/String;

    move-result-object v0

    .line 606
    if-nez v0, :cond_0

    const-string v0, ""

    .line 608
    :cond_0
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 609
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 610
    const-string v0, "Change name"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 611
    const-string v0, "Change"

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 619
    const/16 v0, 0x65

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 621
    :cond_1
    return-void

    .line 614
    :cond_2
    const-string v0, "Create profile"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 615
    const-string v0, "Create"

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->c()V

    .line 228
    sget-boolean v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 626
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/b;->a()V

    .line 628
    :try_start_0
    invoke-static {}, Lcom/flurry/android/v;->a()V

    .line 630
    const-string v0, "QYEHTGZF5INN2T67TDEX"

    invoke-static {p0, v0}, Lcom/flurry/android/v;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    new-instance v0, Lcom/creativemobi/engine/ai;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/ai;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 635
    return-void

    .line 631
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 639
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 640
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/b;->b()V

    .line 642
    :try_start_0
    invoke-static {p0}, Lcom/flurry/android/v;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/creativemobi/engine/ac;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/creativemobi/engine/CompatibilityWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 236
    invoke-static {p1, v0}, Lcom/creativemobi/engine/CompatibilityWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Lcom/creativemobi/engine/CompatibilityWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v3}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, -0xff01

    and-int/2addr v4, v5

    packed-switch v4, :pswitch_data_0

    .line 235
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual {v3, v1, v2}, Lcom/creativemobi/engine/w;->a(FF)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3, v1, v2}, Lcom/creativemobi/engine/w;->b(FF)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3, v1, v2}, Lcom/creativemobi/engine/w;->a(FF)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/MainMenu;->f:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->m()Lcom/creativemobi/engine/w;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 259
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 245
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(FF)V

    goto :goto_2

    .line 249
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->b(FF)V

    goto :goto_2

    .line 253
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(FF)V

    goto :goto_2

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method
