.class public interface abstract Lcom/netflix/mediaclient/servicemgr/PresentationTracking;
.super Ljava/lang/Object;
.source "PresentationTracking.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "nf_presentation"


# virtual methods
.method public abstract reportLolomoScrollAmount(DD)V
.end method

.method public abstract reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/netflix/mediaclient/servicemgr/UiLocation;",
            ")V"
        }
    .end annotation
.end method
