.class Lcom/tutusw/phonespeedup/Home$seekerFocus;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "seekerFocus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/Home;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/Home;Lcom/tutusw/phonespeedup/Home$seekerFocus;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home$seekerFocus;-><init>(Lcom/tutusw/phonespeedup/Home;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 449
    move-object v0, p1

    check-cast v0, Landroid/widget/SeekBar;

    move-object v1, v0

    .line 451
    .local v1, "seekBar":Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 452
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    if-ne v1, v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 454
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 461
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/Home;->freq:[I

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v4, v4, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v4, v4, Lcom/tutusw/phonespeedup/Home;->freq:[I

    iget-object v5, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v5, v5, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tutusw/phonespeedup/Home;->access$5(Lcom/tutusw/phonespeedup/Home;II)V

    .line 462
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v4}, Lcom/tutusw/phonespeedup/Home;->access$6(Lcom/tutusw/phonespeedup/Home;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " MHz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Home;->access$7(Lcom/tutusw/phonespeedup/Home;)V

    .line 464
    return-void

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    if-ne v1, v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seekerFocus;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
