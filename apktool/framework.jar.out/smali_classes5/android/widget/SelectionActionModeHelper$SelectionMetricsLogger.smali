.class final Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionMetricsLogger"
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SelectionMetricsLogger"

.field private static final greylist-max-o PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private greylist-max-o mClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field private final greylist-max-o mEditTextLogger:Z

.field private greylist-max-o mStartIndex:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private final greylist-max-o mTokenIterator:Ljava/text/BreakIterator;

.field private blacklist mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

.field private blacklist mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    return-void
.end method

.method private greylist-max-o countWordsBackward(I)I
    .locals 2

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_1
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    return v1
.end method

.method private greylist-max-o countWordsForward(I)I
    .locals 2

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_1
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    return v1
.end method

.method private static blacklist generateTranslateEvent(ILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent;
    .locals 3

    invoke-static {p1}, Landroid/view/textclassifier/ExtrasUtils;->findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0xd

    if-ne p0, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/view/textclassifier/ExtrasUtils;->getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3}, Landroid/view/textclassifier/ExtrasUtils;->getEntityType(Landroid/os/Bundle;)Ljava/lang/String;

    invoke-static {p3}, Landroid/view/textclassifier/ExtrasUtils;->getScore(Landroid/os/Bundle;)F

    move-result v1

    invoke-static {p3}, Landroid/view/textclassifier/ExtrasUtils;->getModelName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    invoke-direct {v2, p0}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;-><init>(I)V

    invoke-virtual {v2, p2}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v2, 0x0

    aput v1, p2, v2

    invoke-virtual {p0, p2}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setScores([F)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setActionIndices([I)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    invoke-virtual {p0, p3}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setModelName(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getWordDelta(II)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    aput v3, v0, v3

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result p1

    neg-int p1, p1

    aput p1, v0, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v4, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result p1

    if-nez p1, :cond_2

    aget p1, v0, v3

    sub-int/2addr p1, v2

    aput p1, v0, v3

    :cond_2
    :goto_0
    iget p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p2, p1, :cond_3

    aput v3, v0, v2

    return-object v0

    :cond_3
    if-ge p2, p1, :cond_4

    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result p0

    neg-int p0, p0

    aput p0, v0, v2

    return-object v0

    :cond_4
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result p0

    aput p0, v0, v2

    return-object v0
.end method

.method private greylist-max-o hasActiveClassificationSession()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o isWhitespace(II)Z
    .locals 1

    sget-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private blacklist maybeGenerateTranslateClickEvent(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0xd

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {v0, p1, v1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->generateTranslateEvent(ILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

    :cond_0
    return-void
.end method

.method private blacklist maybeGenerateTranslateViewEvent(Landroid/view/textclassifier/TextClassification;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2, p1, v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->generateTranslateEvent(ILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    :goto_0
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    :cond_1
    return-void
.end method

.method private blacklist maybeReportTranslateEvents()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o endTextClassificationSession()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->maybeReportTranslateEvents()V

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {p0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    :cond_0
    return-void
.end method

.method public greylist-max-o isEditTextLogger()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    return p0
.end method

.method public blacklist logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p5, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v1, p1, v2

    aget p1, p1, p2

    invoke-static {v1, p1, p3, p5}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v1, p1, v2

    aget p1, p1, p2

    invoke-static {v1, p1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    :goto_0
    invoke-direct {p0, p5, p4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->maybeGenerateTranslateClickEvent(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SelectionMetricsLogger"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public greylist-max-o logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v1, p1, v2

    aget p1, p1, p2

    invoke-static {v1, p1, p4}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v0, p1, v2

    aget p1, p1, p2

    invoke-static {v0, p1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-interface {p4, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v0, p1, v2

    aget p1, p1, p2

    invoke-static {v0, p1}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-interface {p4, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    :goto_0
    invoke-direct {p0, p3}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->maybeGenerateTranslateViewEvent(Landroid/view/textclassifier/TextClassification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SelectionMetricsLogger"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public blacklist logSelectionStarted(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/CharSequence;II)V
    .locals 3

    :try_start_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    :cond_1
    iget-object p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iput p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    iput-object p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-static {p5, v2}, Landroid/view/textclassifier/SelectionEvent;->createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SelectionMetricsLogger"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method
