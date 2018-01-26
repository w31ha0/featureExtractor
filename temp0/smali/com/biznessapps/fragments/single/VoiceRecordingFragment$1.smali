.class Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->access$000(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->access$100(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;Z)V

    .line 101
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->access$200(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V

    .line 102
    return-void
.end method
