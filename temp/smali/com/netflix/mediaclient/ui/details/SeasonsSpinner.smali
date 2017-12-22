.class public Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "SeasonsSpinner.java"


# static fields
.field public static final NON_USER_SELECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SeasonsSpinner"

.field public static final USER_SELECTED:I = 0x1


# instance fields
.field private drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

.field private drawableOneSeason:Landroid/graphics/drawable/Drawable;

.field private itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field protected pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

.field private touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableOneSeason:Landroid/graphics/drawable/Drawable;

    .line 49
    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setId(I)V

    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    .line 54
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->shouldDispatchToPressHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handleSetPressed(Z)V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->dispatchSetPressed(Z)V

    .line 138
    return-void
.end method

.method public getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableOneSeason:Landroid/graphics/drawable/Drawable;

    .line 118
    return-void
.end method

.method public setNonTouchSelection(I)V
    .locals 6

    .prologue
    .line 90
    const-string/jumbo v0, "SeasonsSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting selection to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 99
    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 66
    return-void
.end method

.method public setOnItemTouchListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 70
    return-void
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setEnabled(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 74
    const-string/jumbo v0, "SeasonsSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting selection to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v4, 0x1

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->touchListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 87
    :cond_1
    return-void
.end method

.method protected shouldDispatchToPressHandler()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public tryGetSeasonIndexBySeasonNumber(I)I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->tryGetSeasonIndexBySeasonNumber(I)I

    move-result v0

    return v0
.end method

.method public updateSeasonData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->updateSeasonData(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 106
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setEnabled(Z)V

    .line 108
    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableMultipleSeasons:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_1
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->drawableOneSeason:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
