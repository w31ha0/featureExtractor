.class public Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;
.super Ljava/lang/Object;
.source "WPMomentScreen.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;
.implements Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "WPMomentScreen"


# instance fields
.field private bgImageBitmap:Landroid/graphics/Bitmap;

.field private bgView:Landroid/widget/ImageView;

.field private card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private cardClickListener:Landroid/view/View$OnClickListener;

.field private cardClosedBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cardOpenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cardVideoMaskBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cardViewsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;",
            ">;"
        }
    .end annotation
.end field

.field private cardsEnabled:Z

.field private cardsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;",
            ">;"
        }
    .end annotation
.end field

.field private colorBlue:I

.field private colorGreen:I

.field private colorRed:I

.field private colorWhite:I

.field private colorYellow:I

.field private currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

.field private currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

.field private currentlyPlayingAudioList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceHeight:F

.field private deviceWidth:F

.field private fgImageBitmap:Landroid/graphics/Bitmap;

.field private fgView:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private instructionVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private introVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private isPendingStart:Z

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

.field private momentClosed:Z

.field private openPanel:Z

.field private panel1:Landroid/view/View;

.field private panel2:Landroid/view/View;

.field private panel3:Landroid/view/View;

.field private panel4:Landroid/view/View;

.field private panelContainer:Landroid/widget/LinearLayout;

.field private panelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private passiveExitVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private positiveLineVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private final quintOutInterpolator:Landroid/view/animation/Interpolator;

.field private recapBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private recapCounter:I

.field private recapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;",
            ">;"
        }
    .end annotation
.end field

.field private recapVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesLoaded:Z

.field private screenBackgrounded:Z

.field private screenPaused:Z

.field private standardCard1Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private standardCard2Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private standardCard3Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private standardCard4Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private summaryVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private timeout2VOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutCounter:I

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private timeoutVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field private wordWallyCard1Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private wordWallyCard2Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private wordWallyCard3Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private wordWallyCard4Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field private wpContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->INTRODUCTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->openPanel:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentlyPlayingAudioList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardOpenBitmapList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapBitmapList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardVideoMaskBitmapList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->handler:Landroid/os/Handler;

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    .line 702
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$6;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutRunnable:Ljava/lang/Runnable;

    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    .line 126
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    .line 127
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceHeight:F

    .line 128
    invoke-static {}, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->getQuintOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isPendingStart:Z

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startWiggleAnimation()V

    return-void
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->handleCardClicked(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorWhite:I

    return v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->showCurrentLearnMomentCard()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Ljava/util/List;ILcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playAudioList(Ljava/util/List;ILcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentlyPlayingAudioList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->discardAnimation(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startPanelAnimation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    return v0
.end method

.method static synthetic access$508(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->passiveExitVOList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutVOList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeout2VOList:Ljava/util/List;

    return-object v0
.end method

.method private animateCardReset(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 4

    .prologue
    .line 663
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 664
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$5;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 678
    return-void
.end method

.method private animateContainerReset(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 644
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 645
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 646
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 647
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$4;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 657
    return-void
.end method

.method private animationRecapStartValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1612
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1624
    :goto_0
    return-void

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1619
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 1620
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotationY(F)V

    .line 1621
    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationX(F)V

    goto :goto_1

    .line 1623
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->showHideCards(Z)V

    goto :goto_0
.end method

.method private animationStartValues(Z)V
    .locals 3

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 1425
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->resetCards(Z)V

    .line 1427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 1428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 1429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 1430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 1432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationX(F)V

    .line 1433
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationX(F)V

    .line 1434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationX(F)V

    .line 1435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationX(F)V

    .line 1436
    return-void
.end method

.method private arrangeCardsForRecap()V
    .locals 3

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1591
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1592
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1593
    return-void
.end method

.method private bitmapWithBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 770
    if-nez p1, :cond_0

    .line 789
    :goto_0
    return-object v0

    .line 781
    :cond_0
    const/4 v1, 0x1

    .line 783
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 784
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 783
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 787
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 788
    int-to-float v4, v1

    int-to-float v1, v1

    invoke-virtual {v3, p1, v4, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 789
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private bitmapWithoutBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 807
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private cancelCurrentAudioPlaybacks()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentlyPlayingAudioList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentlyPlayingAudioList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->stopAudioPlayback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cardClickAnimationComplete(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 2

    .prologue
    .line 516
    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->discardAnimationComplete()V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 543
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->discardAnimationComplete()V

    goto :goto_0

    .line 546
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->animateCardReset(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->RECAP_ITEMS:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    if-ne v0, v1, :cond_5

    .line 549
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playNextRecapItem()V

    goto :goto_0

    .line 550
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isRevealMoment()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 551
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->discardAnimation(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0

    .line 553
    :cond_6
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->animateContainerReset(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0
.end method

.method private discardAnimation(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 4

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1711
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceWidth:F

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1712
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getRevealCardAnimations(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 1713
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1715
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1716
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1717
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1718
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$15;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$15;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1733
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1734
    return-void
.end method

.method private enableCards()V
    .locals 1

    .prologue
    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 1416
    return-void
.end method

.method private flipCard(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    if-nez p1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    if-eqz v0, :cond_0

    .line 569
    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    .line 570
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    .line 571
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->flip()V

    goto :goto_0
.end method

.method private getLearnMomentPanelColor(I)I
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorWhite:I

    .line 1295
    packed-switch p1, :pswitch_data_0

    .line 1311
    :goto_0
    return v0

    .line 1297
    :pswitch_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorYellow:I

    goto :goto_0

    .line 1300
    :pswitch_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorGreen:I

    goto :goto_0

    .line 1303
    :pswitch_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorBlue:I

    goto :goto_0

    .line 1306
    :pswitch_3
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorRed:I

    goto :goto_0

    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRecapAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1489
    if-nez p1, :cond_0

    .line 1490
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "getRecapAnimations: cardsList is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1509
    :goto_0
    return-object v0

    .line 1496
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1497
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 1499
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1500
    if-nez v0, :cond_1

    .line 1501
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "CardView is null. returning without animation"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1502
    goto :goto_0

    .line 1505
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->calculateRecapAnimation(II)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1506
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1507
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1509
    goto :goto_0
.end method

.method private getRecapEntryAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1549
    if-nez p1, :cond_0

    .line 1550
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "getRecapEntryAnimations: cardsList is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1571
    :goto_0
    return-object v0

    .line 1557
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 1560
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1561
    if-nez v0, :cond_1

    .line 1562
    const-string/jumbo v0, "TAG"

    const-string/jumbo v2, "CardView is null. returning without animation"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1563
    goto :goto_0

    .line 1566
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->calculateRecapInitAnimation(II)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1567
    sub-int v5, v4, v3

    mul-int/lit16 v5, v5, 0xc8

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1568
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1569
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1571
    goto :goto_0
.end method

.method private getRecapExitAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1519
    if-nez p1, :cond_0

    .line 1520
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "getRecapExitAnimations: cardsList is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1539
    :goto_0
    return-object v0

    .line 1526
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 1529
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1530
    if-nez v0, :cond_1

    .line 1531
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "CardView is null. returning without animation"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1532
    goto :goto_0

    .line 1535
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->calculateRecapExitAnimation(II)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1536
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1537
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1539
    goto :goto_0
.end method

.method private getRevealCardAnimations(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1456
    if-nez p1, :cond_0

    .line 1457
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "getRevealCardAnimations: cardsList is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1479
    :goto_0
    return-object v0

    .line 1463
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1464
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 1466
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1467
    if-nez v0, :cond_1

    .line 1468
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v2, "CardView is null. returning without animation"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1469
    goto :goto_0

    .line 1472
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->calculateRevealAnimation(II)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1473
    if-eqz p2, :cond_2

    .line 1474
    mul-int/lit16 v5, v3, 0x14d

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1476
    :cond_2
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1477
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 1479
    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private handleCardClicked(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 2

    .prologue
    .line 418
    if-nez p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->select:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportCommandEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)V

    .line 429
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 430
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playItemSelectSound()V

    .line 432
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cancelCurrentAudioPlaybacks()V

    .line 433
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ITEM_SELECTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->scaleUpCard(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0

    .line 436
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isRevealMoment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->flipCard(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0

    .line 439
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->zoomInCard(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0
.end method

.method private isRevealMoment()Z
    .locals 2

    .prologue
    .line 1156
    const-string/jumbo v0, "REVEAL"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 1157
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSceneType()Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1773
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    if-eqz p1, :cond_0

    .line 1781
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    .line 1783
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$16;->$SwitchMap$com$netflix$mediaclient$ui$iko$wordparty$moments$WPMomentScreen$WordPartyMomentState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1785
    :pswitch_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startEntryAnimation()V

    .line 1786
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->introVOList:Ljava/util/List;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->INSTRUCTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 1789
    :pswitch_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->enableCards()V

    .line 1790
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startPanelAnimation(Z)V

    .line 1793
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->instructionVOList:Ljava/util/List;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ITEM_SELECTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 1796
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    goto :goto_0

    .line 1799
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playVictorySound()V

    .line 1800
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->SUMMARY:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    .line 1802
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->positiveLineVOList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 1803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1804
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startRecapAnimation()V

    goto :goto_0

    .line 1800
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->RECAP:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    goto :goto_1

    .line 1808
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapVOList:Ljava/util/List;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->RECAP_ITEMS:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 1811
    :pswitch_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playRecapItems()V

    goto :goto_0

    .line 1814
    :pswitch_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1815
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->setActiveExit(Z)V

    .line 1817
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->summaryVOList:Ljava/util/List;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->OUTRO:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 1820
    :pswitch_7
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 1822
    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportMomentEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1823
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    goto/16 :goto_0

    .line 1820
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_2

    .line 1783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private playAudioList(Ljava/util/List;ILcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;I",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    :goto_0
    return-void

    .line 1332
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1333
    :cond_1
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "Unable to play audio for given empty or null VO list"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 1338
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1340
    if-lt p2, v4, :cond_3

    .line 1341
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 1345
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    .line 1346
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;IILjava/util/List;)V

    invoke-virtual {p0, v6, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playVO(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    goto :goto_0
.end method

.method private playNextRecapItem()V
    .locals 2

    .prologue
    .line 1842
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapCounter:I

    .line 1847
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1857
    if-lez v0, :cond_2

    .line 1858
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->arrangeCardsForRecap()V

    .line 1861
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1862
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startRecapAnimation(I)V

    goto :goto_0

    .line 1864
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startRecapExitAnimation()V

    .line 1865
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->SUMMARY:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0
.end method

.method private playRecapItems()V
    .locals 1

    .prologue
    .line 1831
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapCounter:I

    .line 1833
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playNextRecapItem()V

    .line 1834
    return-void
.end method

.method private playVOList(Ljava/util/List;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1872
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->playAudioList(Ljava/util/List;ILcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 1873
    return-void
.end method

.method private releaseBitmapList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 175
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseBitmaps([Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private releaseBitmaps()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardOpenBitmapList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->releaseBitmapList(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->releaseBitmapList(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardVideoMaskBitmapList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->releaseBitmapList(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapBitmapList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->releaseBitmapList(Ljava/util/List;)V

    .line 159
    return-void
.end method

.method private resetCards(Z)V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1579
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->reset(Z)V

    goto :goto_0

    .line 1581
    :cond_0
    return-void
.end method

.method private scaleUpCard(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 7

    .prologue
    const v6, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    if-nez p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    if-eqz v0, :cond_0

    .line 477
    iput v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    .line 478
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    .line 480
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v5, [F

    .line 481
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v2, v6

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 483
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v5, [F

    .line 484
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getScaleY()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 487
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 488
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 503
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 505
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onCardClickStart(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0
.end method

.method private showCurrentLearnMomentCard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationX(F)V

    .line 1266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationY(F)V

    .line 1267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 1269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;->getCardHeight()I

    move-result v0

    .line 1270
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceHeight:F

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getStatusBarHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 1271
    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    .line 1273
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleX(F)V

    .line 1274
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleY(F)V

    .line 1275
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setTranslationY(F)V

    .line 1276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    const/16 v1, 0x1f4

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    .line 1282
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    goto :goto_0
.end method

.method private showHideCards(Z)V
    .locals 2

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1444
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 1446
    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 8

    .prologue
    const v7, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1095
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-nez v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getBackgroundImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1107
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getForegroundImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1114
    :goto_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 1116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1117
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getStatusBarHeight()I

    move-result v2

    .line 1118
    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->deviceHeight:F

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isNavigationBarBelowContent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    .line 1119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    :goto_3
    int-to-float v0, v0

    add-float/2addr v0, v3

    int-to-float v3, v2

    sub-float/2addr v0, v3

    .line 1121
    mul-float v3, v0, v7

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1122
    mul-float/2addr v0, v7

    const v4, 0x3fe39581    # 1.778f

    mul-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1125
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1126
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1103
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgView:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 1110
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 1119
    goto :goto_3

    .line 1134
    :cond_5
    invoke-direct {p0, v6}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->showHideCards(Z)V

    .line 1135
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isRevealMoment()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->animationStartValues(Z)V

    .line 1136
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1137
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-direct {p0, v1, v6}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getRevealCardAnimations(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1138
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1139
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1140
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$9;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1151
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private startPanelAnimation(Z)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1179
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v8

    .line 1182
    :goto_1
    if-ge v5, v6, :cond_1

    .line 1183
    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getLearnMomentPanelColor(I)I

    move-result v4

    .line 1184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1185
    sget-object v0, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    new-array v1, v10, [F

    .line 1186
    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    move-result v2

    const/high16 v7, -0x3ccc0000    # -180.0f

    sub-float/2addr v2, v7

    aput v2, v1, v8

    .line 1185
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1187
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->CARD_FLIP_ALPHA_VALUE_LIST:[F

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1190
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v8

    aput-object v1, v2, v10

    invoke-static {v3, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1193
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;ZLandroid/view/View;IIILandroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1209
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1210
    add-int/lit8 v0, v5, 0x1

    int-to-long v0, v0

    const-wide/16 v2, 0xa6

    mul-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1211
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1214
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1215
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1216
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1217
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1242
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPanelShuffleSound()V

    goto :goto_0
.end method

.method private startRecapAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1603
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 1604
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->showHideCards(Z)V

    .line 1605
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->prepareRecapScreen()Z

    .line 1606
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->showHideCards(Z)V

    .line 1607
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->animationRecapStartValues()V

    .line 1608
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startRecapEntryAnimation()V

    .line 1609
    return-void
.end method

.method private startRecapAnimation(I)V
    .locals 2

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    :goto_0
    return-void

    .line 1641
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1642
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getRecapAnimations(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1643
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1645
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1671
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private startRecapEntryAnimation()V
    .locals 4

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    :goto_0
    return-void

    .line 1694
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1695
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getRecapEntryAnimations(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1696
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1697
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1698
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private startRecapExitAnimation()V
    .locals 2

    .prologue
    .line 1678
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1681
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1682
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getRecapExitAnimations(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1683
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1684
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private startStopTimeoutTimer(Z)V
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ITEM_SELECTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    if-ne v0, v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 696
    :cond_0
    return-void
.end method

.method private startWiggleAnimation()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 723
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 728
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "cardsList is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 733
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 734
    :goto_1
    if-ge v1, v3, :cond_3

    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 736
    if-nez v0, :cond_2

    .line 737
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "CardView is null. returning without animation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    :cond_2
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWiggleAnimation(I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 743
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 744
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 745
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 746
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$7;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 756
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 757
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 758
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 759
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playWiggleSound()V

    goto :goto_0
.end method

.method private zoomInCard(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 12

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 576
    if-nez p1, :cond_0

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    :cond_1
    :goto_0
    return-void

    .line 589
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    if-eqz v0, :cond_1

    .line 590
    iput v9, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    .line 591
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getPivotX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getPivotY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 595
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v1, v11, [F

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 596
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRotation()F

    move-result v2

    aput v2, v1, v9

    const/high16 v2, -0x40800000    # -1.0f

    .line 597
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v3

    mul-float/2addr v2, v3

    aput v2, v1, v10

    .line 596
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 598
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v11, [F

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 599
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v3

    aput v3, v2, v9

    aput v5, v2, v10

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 601
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v11, [F

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 602
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v4

    aput v4, v3, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 604
    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v11, [F

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 605
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    aput v5, v4, v9

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 606
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getPivotX()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v4, v10

    .line 605
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 607
    sget-object v4, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v5, v11, [F

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 608
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    aput v6, v5, v9

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 609
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getY()F

    move-result v7

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getPivotY()F

    move-result v8

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v5, v10

    .line 608
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 611
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 613
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 630
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onCardClickStart(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public configureCards(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 287
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->itemList:Ljava/util/List;

    .line 295
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getRecapItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->itemList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardOpenBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardVideoMaskBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;

    .line 317
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getCardClosedImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v1

    .line 324
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v3, v1, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 325
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getCardOpenImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v3

    .line 329
    if-eqz v3, :cond_3

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v1, v3, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardOpenBitmapList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getCardOpenVideoMask()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v1

    .line 335
    const/4 v0, 0x0

    .line 336
    if-eqz v1, :cond_4

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0, v1, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardVideoMaskBitmapList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;

    .line 344
    if-eqz v0, :cond_6

    .line 347
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getCardClosedImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapBitmapList:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v3, v0, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 352
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getBackgroundImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_8

    .line 354
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v1, v0, v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgImageBitmap:Landroid/graphics/Bitmap;

    .line 357
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getForegroundImage()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_9

    .line 359
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v1, v0, v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgImageBitmap:Landroid/graphics/Bitmap;

    .line 366
    :cond_9
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->resourcesLoaded:Z

    .line 367
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->prepareAndStartIfPending()V

    goto/16 :goto_0
.end method

.method public discardAnimationComplete()V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->POSITIVE_LINE:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 1739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    .line 1743
    :goto_0
    return-void

    .line 1741
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    goto :goto_0
.end method

.method public getCurrentStateNameForLogging()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1752
    const/4 v0, 0x0

    .line 1754
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->OUTRO:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    if-ne v1, v2, :cond_2

    .line 1755
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "PASSIVE_EXIT"

    .line 1761
    :cond_0
    :goto_0
    return-object v0

    .line 1755
    :cond_1
    const-string/jumbo v0, "ACTIVE_EXIT"

    goto :goto_0

    .line 1757
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    if-eqz v1, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 397
    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutCounter:I

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->momentClosed:Z

    .line 399
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isPendingStart:Z

    .line 400
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 403
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 404
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->releaseResources()V

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 411
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 412
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 413
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 414
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 415
    return-void
.end method

.method public isLearnMoment()Z
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-nez v0, :cond_0

    .line 1162
    const/4 v0, 0x0

    .line 1164
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "LEARN"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSceneType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isMomentClosed()Z
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenBackgrounded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->momentClosed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 957
    :goto_0
    return v0

    .line 953
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCardClickStart(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 283
    return-void
.end method

.method public onCardRevealComplete(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClickAnimationComplete(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 140
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->releaseResources()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->releaseBitmaps()V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenPaused:Z

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenPaused:Z

    .line 249
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenBackgrounded:Z

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenBackgrounded:Z

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->resourcesLoaded:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playBgAudio()V

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ITEM_SELECTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    if-ne v0, v1, :cond_0

    .line 196
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 201
    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClickAnimationComplete(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->POSITIVE_LINE:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentCard:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->revealCard()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->startStopTimeoutTimer(Z)V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenBackgrounded:Z

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->ITEM_SELECTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    if-ne v0, v1, :cond_0

    .line 233
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsEnabled:Z

    .line 239
    :cond_0
    return-void
.end method

.method public playVO(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V
    .locals 5

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1380
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1384
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 1388
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$13;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$13;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    .line 1405
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getVolume()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playAudio(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    .line 1408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentlyPlayingAudioList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public prepareAndStart()Z
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 852
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 854
    if-nez v7, :cond_0

    .line 928
    :goto_0
    return v4

    .line 865
    :cond_0
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->momentClosed:Z

    .line 867
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getItems()Ljava/util/List;

    move-result-object v8

    .line 871
    if-eqz v8, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->resourcesLoaded:Z

    if-nez v0, :cond_2

    .line 875
    :cond_1
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isPendingStart:Z

    goto :goto_0

    .line 878
    :cond_2
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isPendingStart:Z

    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentlyPlayingAudioList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 883
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v6, v4

    .line 885
    :goto_1
    if-ge v6, v9, :cond_5

    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 887
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;

    .line 888
    if-eqz v1, :cond_3

    .line 889
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getItemAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setAudio(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)V

    .line 890
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getCardVideo()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setVideo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;)V

    .line 893
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardOpenBitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 895
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 896
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardOpenBitmapList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 897
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardVideoMaskBitmapList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 898
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bitmapWithBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 899
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bitmapWithoutBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 900
    const-string/jumbo v10, "REVEAL"

    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSceneType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 902
    if-eqz v10, :cond_7

    .line 903
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bitmapWithBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 905
    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 885
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 910
    :cond_5
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->showHideCards(Z)V

    .line 912
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    if-eqz v0, :cond_6

    move v1, v4

    .line 913
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getLearnMomentPanelColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 913
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 918
    :cond_6
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getIntroductionAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->introVOList:Ljava/util/List;

    .line 919
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getInstructionAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->instructionVOList:Ljava/util/List;

    .line 920
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getTimeoutAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeoutVOList:Ljava/util/List;

    .line 921
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getTimeout2AudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->timeout2VOList:Ljava/util/List;

    .line 922
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPassiveExitAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->passiveExitVOList:Ljava/util/List;

    .line 923
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPositiveLineAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->positiveLineVOList:Ljava/util/List;

    .line 924
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getRecapAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapVOList:Ljava/util/List;

    .line 925
    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSummaryAudioList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->summaryVOList:Ljava/util/List;

    .line 927
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->start()V

    move v4, v5

    .line 928
    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_2
.end method

.method public prepareAndStartIfPending()V
    .locals 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isPendingStart:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$1;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    :cond_0
    return-void
.end method

.method public prepareRecapScreen()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v3

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v3

    .line 826
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 827
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 828
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;

    .line 829
    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItem;->getRecapAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setAudio(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)V

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapBitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClosedBitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 834
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->recapBitmapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bitmapWithBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 835
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardVideoMaskBitmapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bitmapWithoutBorder(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 836
    invoke-virtual {v0, v4, v4, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 826
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 841
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setInteractiveMomentAndFindViewsForMoment(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 961
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->currentMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 963
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 964
    const v0, 0x7f1003db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wpContainer:Landroid/view/ViewGroup;

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard1Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 971
    if-nez v0, :cond_1

    .line 972
    const v0, 0x7f1003ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard1Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 974
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard2Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 977
    if-nez v0, :cond_2

    .line 978
    const v0, 0x7f1003eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard2Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 980
    :cond_2
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard3Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 983
    if-nez v0, :cond_3

    .line 984
    const v0, 0x7f1003ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard3Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 986
    :cond_3
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 988
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard4Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 989
    if-nez v0, :cond_4

    .line 990
    const v0, 0x7f1003ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPWordWallyCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->wordWallyCard4Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 992
    :cond_4
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1019
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 1020
    const v0, 0x7f1003e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    .line 1022
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1024
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel1:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1025
    const v0, 0x7f1003e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel1:Landroid/view/View;

    .line 1027
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel2:Landroid/view/View;

    if-nez v0, :cond_7

    .line 1028
    const v0, 0x7f1003e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel2:Landroid/view/View;

    .line 1030
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel3:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1031
    const v0, 0x7f1003e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel3:Landroid/view/View;

    .line 1033
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel4:Landroid/view/View;

    if-nez v0, :cond_9

    .line 1034
    const v0, 0x7f1003e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel4:Landroid/view/View;

    .line 1037
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgView:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    .line 1038
    const v0, 0x7f1003e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->bgView:Landroid/widget/ImageView;

    .line 1040
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    if-nez v0, :cond_b

    .line 1041
    const v0, 0x7f1003ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->fgView:Landroid/widget/ImageView;

    .line 1043
    :cond_b
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$8;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1059
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    .line 1067
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel1:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel2:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel3:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panelList:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->panel4:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1074
    const v1, 0x7f0f0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorYellow:I

    .line 1075
    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorGreen:I

    .line 1076
    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorRed:I

    .line 1077
    const v1, 0x7f0f0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorBlue:I

    .line 1078
    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->colorWhite:I

    .line 1080
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1081
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setCardListener(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;)V

    .line 1083
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setVOPlayer(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;)V

    goto :goto_1

    .line 994
    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard1Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 995
    if-nez v0, :cond_e

    .line 996
    const v0, 0x7f1003e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard1Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 998
    :cond_e
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card1:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1000
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard2Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1001
    if-nez v0, :cond_f

    .line 1002
    const v0, 0x7f1003e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard2Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1004
    :cond_f
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card2:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1006
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard3Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1007
    if-nez v0, :cond_10

    .line 1008
    const v0, 0x7f1003e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard3Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1010
    :cond_10
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card3:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard4Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1013
    if-nez v0, :cond_11

    .line 1014
    const v0, 0x7f1003e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPStandardCardLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->standardCard4Reference:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1016
    :cond_11
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->card4:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    goto/16 :goto_0

    .line 1085
    :cond_12
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->screenBackgrounded:Z

    if-eqz v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;->INTRODUCTION:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->moveToState(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->manager:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playBgAudio()V

    goto :goto_0
.end method
