.class public Lcom/skipping/LevelArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LevelArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skipping/LevelArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/skipping/LevelFB;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skipping/LevelFB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skipping/LevelFB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/skipping/LevelFB;>;"
    const v0, 0x7f030011

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    iput-object p1, p0, Lcom/skipping/LevelArrayAdapter;->context:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/skipping/LevelArrayAdapter;->values:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 71
    move-object v3, p2

    .line 72
    .local v3, "rowView":Landroid/view/View;
    if-nez v3, :cond_1

    .line 78
    iget-object v4, p0, Lcom/skipping/LevelArrayAdapter;->context:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 79
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030011

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 80
    new-instance v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/skipping/LevelArrayAdapter$ViewHolder;-><init>()V

    .line 83
    .local v0, "holder":Lcom/skipping/LevelArrayAdapter$ViewHolder;
    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    .line 84
    const v4, 0x7f0a0012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .line 85
    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    .line 86
    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView4:Landroid/widget/TextView;

    .line 87
    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView5:Landroid/widget/TextView;

    .line 90
    const v4, 0x7f0a0019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/skipping/LevelArrayAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/skipping/LevelFB;

    .line 98
    .local v2, "levelFB":Lcom/skipping/LevelFB;
    if-eqz v2, :cond_0

    .line 100
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/skipping/LevelFB;->getValues1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/skipping/LevelFB;->getValues2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/skipping/LevelFB;->getValues3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView4:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/skipping/LevelFB;->getValues4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->textView5:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/skipping/LevelFB;->getValues5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    sget v4, Lcom/skipping/LevelActivity;->selected_level:I

    if-ne v4, p1, :cond_2

    .line 122
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v5, 0x7f020018

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :goto_1
    return-object v3

    .line 93
    .end local v0    # "holder":Lcom/skipping/LevelArrayAdapter$ViewHolder;
    .end local v2    # "levelFB":Lcom/skipping/LevelFB;
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/skipping/LevelArrayAdapter$ViewHolder;
    goto :goto_0

    .line 124
    .restart local v2    # "levelFB":Lcom/skipping/LevelFB;
    :cond_2
    iget-object v4, v0, Lcom/skipping/LevelArrayAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
