.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;
.super Ljava/lang/Object;
.source "LanguageSelector.java"


# instance fields
.field choice:Landroid/widget/RadioButton;

.field name:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const v0, 0x7f100220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->name:Landroid/widget/TextView;

    .line 419
    const v0, 0x7f10021f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$RowHolder;->choice:Landroid/widget/RadioButton;

    .line 420
    return-void
.end method
