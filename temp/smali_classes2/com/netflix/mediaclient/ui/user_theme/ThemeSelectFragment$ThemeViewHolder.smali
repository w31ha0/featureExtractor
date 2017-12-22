.class public Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ThemeSelectFragment.java"


# instance fields
.field background:Landroid/view/View;

.field lightDark:Landroid/view/View;

.field root:Landroid/view/View;

.field text:Landroid/widget/TextView;

.field textSecondary:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->root:Landroid/view/View;

    .line 79
    const v0, 0x7f1001d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->background:Landroid/view/View;

    .line 80
    const v0, 0x7f1003a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->lightDark:Landroid/view/View;

    .line 81
    const v0, 0x7f1003a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->text:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f1003a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->textSecondary:Landroid/widget/TextView;

    .line 83
    return-void
.end method
