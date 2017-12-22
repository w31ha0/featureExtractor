.class public Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$SaveInstanceState;
.super Ljava/lang/Object;
.source "RelatedTitleState.java"


# static fields
.field public static final RELATED_TITLES_INSTANCE_STATE:Ljava/lang/String; = "RELATED_TITLES_INSTANCE_STATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Landroid/os/Bundle;Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 79
    const-string/jumbo v1, "RELATED_TITLES_INSTANCE_STATE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 80
    return-void
.end method
