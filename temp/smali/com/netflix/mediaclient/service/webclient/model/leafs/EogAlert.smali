.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
.super Ljava/lang/Object;
.source "EogAlert.java"


# static fields
.field static final FIELD_EOG:Ljava/lang/String; = "eogAlert"


# instance fields
.field public isDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_EogAlert$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_EogAlert$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract abTestCell()I
.end method

.method public abstract abTestId()I
.end method

.method public abstract body()Ljava/lang/String;
.end method

.method public abstract continueBtnText()Ljava/lang/String;
.end method

.method public abstract currentPlanId()Ljava/lang/String;
.end method

.method public abstract currentPlanTier()Ljava/lang/String;
.end method

.method public abstract disclaimerText()Ljava/lang/String;
.end method

.method public abstract footerLinkText()Ljava/lang/String;
.end method

.method public abstract footerSuffix()Ljava/lang/String;
.end method

.method public abstract footerText()Ljava/lang/String;
.end method

.method public abstract hdPlanIsCurrentPlan()Z
.end method

.method public abstract hdPlanPlanId()Ljava/lang/String;
.end method

.method public abstract hdPlanPlanTier()Ljava/lang/String;
.end method

.method public abstract hdPlanPrice()Ljava/lang/String;
.end method

.method public abstract hdPlanText()Ljava/lang/String;
.end method

.method public abstract isBlocking()Z
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract messageName()Ljava/lang/String;
.end method

.method public abstract sdPlanIsCurrentPlan()Z
.end method

.method public abstract sdPlanPlanId()Ljava/lang/String;
.end method

.method public abstract sdPlanPlanTier()Ljava/lang/String;
.end method

.method public abstract sdPlanPrice()Ljava/lang/String;
.end method

.method public abstract sdPlanText()Ljava/lang/String;
.end method

.method public abstract seeOtherPlansText()Ljava/lang/String;
.end method

.method public abstract selectPlanText()Ljava/lang/String;
.end method

.method public abstract skipBtnImpressionType()Ljava/lang/String;
.end method

.method public abstract skipBtnText()Ljava/lang/String;
.end method

.method public abstract templateId()Ljava/lang/String;
.end method

.method public abstract title()Ljava/lang/String;
.end method

.method public abstract uhdPlanIsCurrentPlan()Z
.end method

.method public abstract uhdPlanPlanId()Ljava/lang/String;
.end method

.method public abstract uhdPlanPlanTier()Ljava/lang/String;
.end method

.method public abstract uhdPlanPrice()Ljava/lang/String;
.end method

.method public abstract uhdPlanText()Ljava/lang/String;
.end method

.method public abstract urlImage1()Ljava/lang/String;
.end method

.method public abstract urlImage2()Ljava/lang/String;
.end method
