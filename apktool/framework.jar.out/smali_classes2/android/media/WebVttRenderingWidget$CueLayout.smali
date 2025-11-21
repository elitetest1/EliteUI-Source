.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private greylist-max-o mActive:Z

.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final greylist-max-o mCue:Landroid/media/TextTrackCue;

.field private greylist-max-o mFontSize:F

.field private greylist-max-o mOrder:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOrder(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 0

    iget p0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    iget p1, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 p3, 0x64

    const/4 p4, 0x1

    if-ne p1, p3, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    iget p2, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_2

    :pswitch_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_2

    :pswitch_2
    const p1, 0x800005

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_2

    :pswitch_3
    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_2

    :pswitch_4
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p4, 0x10

    :goto_1
    invoke-virtual {p0, p4}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getCue()Landroid/media/TextTrackCue;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object p0
.end method

.method public greylist-max-o isActive()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return p0
.end method

.method public greylist-max-o measureForParent(II)V
    .locals 3

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v1

    iget v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v1, v2}, Landroid/media/WebVttRenderingWidget;->-$$Nest$smresolveCueAlignment(II)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v1, v1, 0x64

    goto :goto_1

    :cond_2
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v2, 0x32

    if-gt v1, v2, :cond_3

    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v1, v1, 0x64

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    :goto_1
    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    const/high16 p1, -0x80000000

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public greylist-max-o prepForPrune()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public greylist-max-o setOrder(I)V
    .locals 0

    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return-void
.end method

.method public greylist-max-o update()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v0

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v1, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v0, v1}, Landroid/media/WebVttRenderingWidget;->-$$Nest$smresolveCueAlignment(II)I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_0
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v3, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    new-instance v6, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-direct {v6, v7, v8}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    invoke-virtual {v6, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v6, v1, v2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    const/4 v7, -0x2

    invoke-virtual {p0, v6, v7, v7}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
