.class public Lcom/netflix/mediaclient/ui/details/CopyrightView;
.super Ljava/lang/Object;
.source "CopyrightView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private copyrightTextView:Landroid/widget/TextView;

.field private copyrightViewGroup:Landroid/view/ViewGroup;

.field private details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private expandedYOffset:I

.field private isCentered:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 47
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->context:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/details/CopyrightView;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->expandedYOffset:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/details/CopyrightView;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->showExpandedCopyrightPopup(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method private addExpandedCopyright()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;-><init>(Lcom/netflix/mediaclient/ui/details/CopyrightView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 121
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    const-string/jumbo v0, "layout_inflater"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    const v2, 0x7f030117

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/ViewGroup;)V

    move-object v0, v1

    .line 40
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f1003c3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setLayoutAsCentered()V

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->addExpandedCopyright()V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    goto :goto_0
.end method

.method private setExpandedText(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 150
    const v0, 0x7f1003c4

    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void
.end method

.method private setLayoutAsCentered()V
    .locals 3

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->isCentered:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_0
    return-void
.end method

.method private setScreenLocation(Landroid/support/v7/app/AlertDialog;)V
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 162
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 166
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->isCentered:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    or-int/lit8 v0, v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 167
    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 168
    const/4 v0, 0x1

    aget v0, v1, v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->expandedYOffset:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 169
    return-void

    .line 166
    :cond_0
    const v0, 0x800003

    goto :goto_0
.end method

.method private showExpandedCopyrightPopup(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 4

    .prologue
    .line 127
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->context:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 131
    const v2, 0x7f030118

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setExpandedText(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/view/View;)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setScreenLocation(Landroid/support/v7/app/AlertDialog;)V

    .line 145
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->copyrightViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setGravityAsCenter()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->isCentered:Z

    .line 56
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->init()V

    .line 88
    return-void
.end method
