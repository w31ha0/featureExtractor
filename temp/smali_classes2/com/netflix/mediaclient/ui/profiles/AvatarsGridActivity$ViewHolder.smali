.class Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AvatarsGridActivity.java"


# instance fields
.field private final img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private final topEditImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 326
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->topEditImg:Landroid/widget/ImageView;

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 329
    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->topEditImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method
