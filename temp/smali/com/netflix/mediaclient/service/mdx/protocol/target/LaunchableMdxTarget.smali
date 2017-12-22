.class public interface abstract Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;
.super Ljava/lang/Object;
.source "LaunchableMdxTarget.java"


# virtual methods
.method public abstract getLaunchType()Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;
.end method

.method public abstract isTargetLaunched()Z
.end method

.method public abstract launchTarget(Z)Z
.end method

.method public abstract notifyLaunchResult(ZLcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;)V
.end method
