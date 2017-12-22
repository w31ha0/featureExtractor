.class public abstract Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "BaseTutorialDialogFrag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->adjustModalWidthIfApplicable(Landroid/view/View;)V

    return-void
.end method

.method private adjustModalWidthIfApplicable(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 56
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 61
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->dismiss()V

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->markAsSeen()V

    .line 71
    return-void
.end method

.method public markAsSeen()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;->markAsSeen()V

    .line 77
    return-void
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag$1;-><init>(Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 40
    return-void
.end method
