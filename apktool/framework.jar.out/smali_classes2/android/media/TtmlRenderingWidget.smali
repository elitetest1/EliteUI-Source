.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TtmlRenderingWidget$CustomTextView;
    }
.end annotation


# static fields
.field private static final blacklist LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private blacklist mCaptionManager:Landroid/view/accessibility/CaptioningManager;

.field private blacklist mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private greylist-max-o mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private blacklist mTextViewSet:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/TtmlRenderingWidget$CustomTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/CaptioningManager;

    iput-object p2, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p2

    iput-object p2, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    new-instance p2, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-direct {p2, p1}, Landroid/media/TtmlRenderingWidget$CustomTextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x51

    invoke-virtual {p2, p1}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setGravity(I)V

    iget-object p0, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist applyOpacity(II)I
    .locals 1

    mul-int/lit16 p2, p2, 0xff

    div-int/lit8 p2, p2, 0x64

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public greylist-max-o setActiveCues(Ljava/util/Vector;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->removeAllViews()V

    iget-object v0, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    iget-object v3, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const-string v2, ""

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlCue;

    const-string v6, "\n"

    if-lez v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v5, v5, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v6, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget-object v7, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v7

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const v8, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v8

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v8, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x21

    invoke-interface {v5, v8, v1, v6, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlRenderingWidget$CustomTextView;

    const/16 v8, 0x51

    invoke-virtual {v6, v8}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setGravity(I)V

    iget-object v6, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v6, v5}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v5, v7}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextSize(F)V

    iget-object v5, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v5}, Landroid/media/TtmlRenderingWidget$CustomTextView;->getTextSize()F

    move-result v5

    iget-object v6, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlRenderingWidget$CustomTextView;

    mul-float/2addr v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v6, v7}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextSize(F)V

    iget-object v5, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlRenderingWidget$CustomTextView;

    iget-object v6, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v6, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v5, v6}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextColor(I)V

    iget-object v5, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6, v6}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;->setSize(II)V

    iget-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_3
    return-void
.end method

.method public greylist-max-o setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    return-void
.end method

.method public greylist-max-o setSize(II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    return-void
.end method

.method public greylist-max-o setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    return-void
.end method
