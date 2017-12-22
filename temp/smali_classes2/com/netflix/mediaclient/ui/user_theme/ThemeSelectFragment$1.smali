.class Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ThemeSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->values()[Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;->onBindViewHolder(Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;I)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->values()[Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    .line 46
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->background:Landroid/view/View;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->lightDark:Landroid/view/View;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->textSecondary:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getSecondaryTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->root:Landroid/view/View;

    new-instance v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1$1;-><init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;Lcom/netflix/mediaclient/ui/user_theme/Theme;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 47
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$1;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030107

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment$ThemeViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
