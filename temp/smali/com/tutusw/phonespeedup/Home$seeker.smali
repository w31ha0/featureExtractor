.class Lcom/tutusw/phonespeedup/Home$seeker;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "seeker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/Home;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/Home;Lcom/tutusw/phonespeedup/Home$seeker;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home$seeker;-><init>(Lcom/tutusw/phonespeedup/Home;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v5, -0x1

    .line 475
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v3, Lcom/tutusw/phonespeedup/Home;->maxText:Landroid/widget/TextView;

    .line 477
    .local v2, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    if-ne p1, v3, :cond_3

    .line 478
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v3, Lcom/tutusw/phonespeedup/Home;->maxText:Landroid/widget/TextView;

    .line 479
    const-string v3, "\u6700\u5927\u503c: "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v4, v4, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget v4, v4, Lcom/tutusw/phonespeedup/Home;->limitMax:I

    invoke-static {v3, v4}, Lcom/tutusw/phonespeedup/Home;->access$8(Lcom/tutusw/phonespeedup/Home;I)I

    move-result v0

    .local v0, "indexMax":I
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget v4, v4, Lcom/tutusw/phonespeedup/Home;->limitMin:I

    invoke-static {v3, v4}, Lcom/tutusw/phonespeedup/Home;->access$8(Lcom/tutusw/phonespeedup/Home;I)I

    move-result v1

    .line 490
    .local v1, "indexMin":I
    if-eq v0, v5, :cond_2

    if-eq v1, v5, :cond_2

    .line 491
    if-gt p2, v0, :cond_1

    if-ge p2, v1, :cond_4

    .line 492
    :cond_1
    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    :cond_2
    :goto_1
    return-void

    .line 482
    .end local v0    # "indexMax":I
    .end local v1    # "indexMin":I
    :cond_3
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    if-ne p1, v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v3, Lcom/tutusw/phonespeedup/Home;->minText:Landroid/widget/TextView;

    .line 484
    const-string v3, "\u6700\u5c0f\u503c: "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v4, v4, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    .restart local v0    # "indexMax":I
    .restart local v1    # "indexMin":I
    :cond_4
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    const-string v4, "color_text"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 503
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 510
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 517
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->freq:[I

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->freq:[I

    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->access$5(Lcom/tutusw/phonespeedup/Home;II)V

    .line 518
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Home;->access$6(Lcom/tutusw/phonespeedup/Home;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Home;->access$7(Lcom/tutusw/phonespeedup/Home;)V

    .line 520
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$seeker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
