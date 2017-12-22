.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
.super Ljava/lang/Object;
.source "IDiagnosis.java"


# virtual methods
.method public abstract abortDiagnosis()V
.end method

.method public abstract addListener(Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;)V
.end method

.method public abstract getNetworkStateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeListener()V
.end method

.method public abstract startNetworkDiagnosis()V
.end method
