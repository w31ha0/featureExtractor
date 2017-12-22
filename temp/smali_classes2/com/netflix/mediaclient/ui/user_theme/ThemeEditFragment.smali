.class public Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "ThemeEditFragment.java"


# instance fields
.field themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->updateColor(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method private setupRow(Ljava/lang/String;ILandroid/view/View;)V
    .locals 5

    .prologue
    .line 93
    const v0, 0x7f10039f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    const v0, 0x7f10039d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    const v1, 0x7f1003a0

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 97
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;

    invoke-direct {v0, p0, v2, p3}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;-><init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    const-string/jumbo v0, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method private updateColor(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    const v1, 0x7f1001e7

    if-ne p3, v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->setTextColor(I)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    const v1, 0x7f1001e8

    if-ne p3, v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->setSecondaryTextColor(I)V

    goto :goto_0

    .line 85
    :cond_3
    const v1, 0x7f1001e9

    if-ne p3, v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->setIconColor(I)V

    goto :goto_0

    .line 87
    :cond_4
    const v1, 0x7f1001ea

    if-ne p3, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->setBackgroundColor(I)V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 22
    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getSavedTheme(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->DARK:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    .line 35
    :cond_0
    const-string/jumbo v0, "Primary Color"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v1

    const v2, 0x7f1001e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->setupRow(Ljava/lang/String;ILandroid/view/View;)V

    .line 36
    const-string/jumbo v0, "Secondary Color"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getSecondaryTextColor()I

    move-result v1

    const v2, 0x7f1001e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->setupRow(Ljava/lang/String;ILandroid/view/View;)V

    .line 37
    const-string/jumbo v0, "Icon Color"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getIconColor()I

    move-result v1

    const v2, 0x7f1001e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->setupRow(Ljava/lang/String;ILandroid/view/View;)V

    .line 38
    const-string/jumbo v0, "Background Color"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->themeState:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getBackgroundColor()I

    move-result v1

    const v2, 0x7f1001ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->setupRow(Ljava/lang/String;ILandroid/view/View;)V

    .line 40
    const v0, 0x7f1001ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$1;-><init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f1001ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$2;-><init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f1001eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 58
    new-instance v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$3;-><init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    return-void
.end method
