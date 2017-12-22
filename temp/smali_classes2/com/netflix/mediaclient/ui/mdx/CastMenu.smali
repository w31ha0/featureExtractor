.class public final Lcom/netflix/mediaclient/ui/mdx/CastMenu;
.super Ljava/lang/Object;
.source "CastMenu.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CastMenu"

.field private static tooltipHasbeenShown:Z


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final castItem:Landroid/view/MenuItem;

.field private final handler:Landroid/os/Handler;

.field private tooltip:Lcom/netflix/android/tooltips/Tooltip;

.field private final useDarkTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltipHasbeenShown:Z

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string/jumbo v0, "CastMenu"

    const-string/jumbo v3, "creating"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 64
    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->useDarkTheme:Z

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    .line 68
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->handler:Landroid/os/Handler;

    .line 70
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity that uses CastMenu must own a reference to mdxFrag!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)V

    .line 78
    const/high16 v3, 0x7f100000

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v5, 0x7f09018d

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    .line 79
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 92
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->isCastMenuEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->update()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public static addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    .line 53
    return-void
.end method

.method private animateMdxIcon(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastMenu$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastMenu;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method private getIcon()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->useDarkTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020202

    .line 156
    :goto_0
    return v0

    .line 146
    :cond_0
    const v0, 0x7f020203

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isTargetReadyToControl(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->wasMdxStatusUpdatedByMdxReceiver()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->useDarkTheme:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020200

    goto :goto_0

    :cond_2
    const v0, 0x7f020201

    goto :goto_0

    .line 153
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->useDarkTheme:Z

    if-eqz v0, :cond_4

    const v0, 0x7f02015b

    goto :goto_0

    :cond_4
    const v0, 0x7f02015c

    goto :goto_0

    .line 156
    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->useDarkTheme:Z

    if-eqz v0, :cond_6

    const v0, 0x7f020204

    goto :goto_0

    :cond_6
    const v0, 0x7f020205

    goto :goto_0
.end method


# virtual methods
.method setEnabled(Z)V
    .locals 5

    .prologue
    .line 97
    const-string/jumbo v0, "CastMenu"

    const-string/jumbo v1, "Setting cast menu item enabled %b: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 99
    return-void
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getCastMenu()Landroid/view/View;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildCastTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAddCastToMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string/jumbo v0, "CastMenu"

    const-string/jumbo v1, "Service manager or mdx are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->getIcon()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageActionBarIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->animateMdxIcon(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->castItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltipHasbeenShown:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/Tooltip;->show()V

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->tooltipHasbeenShown:Z

    goto :goto_0
.end method
