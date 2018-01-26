.class public Lcom/biznessapps/facebook/LoginButton;
.super Landroid/widget/ImageButton;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/facebook/LoginButton$1;,
        Lcom/biznessapps/facebook/LoginButton$SessionListener;,
        Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;,
        Lcom/biznessapps/facebook/LoginButton$LoginDialogListener;,
        Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;
    }
.end annotation


# instance fields
.field private mFb:Lcom/facebook/android/Facebook;

.field private mHandler:Landroid/os/Handler;

.field private mPermissions:[Ljava/lang/String;

.field private mSessionListener:Lcom/biznessapps/facebook/LoginButton$SessionListener;

.field private needToAuthenticate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/biznessapps/facebook/LoginButton$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/facebook/LoginButton$SessionListener;-><init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V

    iput-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mSessionListener:Lcom/biznessapps/facebook/LoginButton$SessionListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/biznessapps/facebook/LoginButton$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/facebook/LoginButton$SessionListener;-><init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V

    iput-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mSessionListener:Lcom/biznessapps/facebook/LoginButton$SessionListener;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/biznessapps/facebook/LoginButton$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/facebook/LoginButton$SessionListener;-><init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V

    iput-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mSessionListener:Lcom/biznessapps/facebook/LoginButton$SessionListener;

    .line 55
    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/facebook/LoginButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/facebook/LoginButton;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/biznessapps/facebook/LoginButton;->needToAuthenticate:Z

    return v0
.end method

.method static synthetic access$202(Lcom/biznessapps/facebook/LoginButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/facebook/LoginButton;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/biznessapps/facebook/LoginButton;->needToAuthenticate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/biznessapps/facebook/LoginButton;)Lcom/facebook/android/Facebook;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/facebook/LoginButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mFb:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/facebook/LoginButton;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/facebook/LoginButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/facebook/LoginButton;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/facebook/LoginButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/facebook/android/Facebook;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fb"    # Lcom/facebook/android/Facebook;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 58
    iput-object p1, p0, Lcom/biznessapps/facebook/LoginButton;->mFb:Lcom/facebook/android/Facebook;

    .line 59
    iput-object p2, p0, Lcom/biznessapps/facebook/LoginButton;->mPermissions:[Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mHandler:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/facebook/LoginButton;->setBackgroundColor(I)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/biznessapps/facebook/LoginButton;->setAdjustViewBounds(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/biznessapps/layout/R$drawable;->logout_button:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/biznessapps/facebook/LoginButton;->setImageResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/facebook/LoginButton;->drawableStateChanged()V

    .line 67
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mSessionListener:Lcom/biznessapps/facebook/LoginButton$SessionListener;

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->addAuthListener(Lcom/biznessapps/facebook/SessionEvents$AuthListener;)V

    .line 68
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton;->mSessionListener:Lcom/biznessapps/facebook/LoginButton$SessionListener;

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->addLogoutListener(Lcom/biznessapps/facebook/SessionEvents$LogoutListener;)V

    .line 69
    new-instance v0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;-><init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V

    invoke-virtual {p0, v0}, Lcom/biznessapps/facebook/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-boolean v2, p0, Lcom/biznessapps/facebook/LoginButton;->needToAuthenticate:Z

    .line 71
    return-void

    .line 64
    :cond_0
    sget v0, Lcom/biznessapps/layout/R$drawable;->login_button:I

    goto :goto_0
.end method
