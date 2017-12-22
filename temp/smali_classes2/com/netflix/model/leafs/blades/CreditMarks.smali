.class public abstract Lcom/netflix/model/leafs/blades/CreditMarks;
.super Ljava/lang/Object;
.source "CreditMarks.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/model/leafs/blades/CreditMarks;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 27
    new-instance v0, Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;->setDefaultEndCredit(I)Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;->setDefaultEndRecap(I)Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;->setDefaultStartCredit(I)Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;->setDefaultStartRecap(I)Lcom/netflix/model/leafs/blades/$AutoValue_CreditMarks$GsonTypeAdapter;

    move-result-object v0

    .line 27
    return-object v0
.end method


# virtual methods
.method public abstract endCredit()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endcredit"
    .end annotation
.end method

.method public abstract endRecap()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endrecap"
    .end annotation
.end method

.method public abstract startCredit()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startcredit"
    .end annotation
.end method

.method public abstract startRecap()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startrecap"
    .end annotation
.end method
