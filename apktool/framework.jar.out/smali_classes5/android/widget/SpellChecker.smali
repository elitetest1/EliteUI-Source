.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;,
        Landroid/widget/SpellChecker$SentenceIteratorWrapper;,
        Landroid/widget/SpellChecker$RemoveReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o AVERAGE_WORD_LENGTH:I = 0x7

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final blacklist MAX_SENTENCE_LENGTH:I = 0x15e

.field private static final greylist-max-o SPELL_PAUSE_DURATION:I = 0x190

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SpellChecker"

.field private static final greylist-max-o USE_SPAN_RANGE:I = -0x1

.field public static final greylist-max-o WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final greylist-max-o mCookie:I

.field private greylist-max-o mCurrentLocale:Ljava/util/Locale;

.field private greylist-max-o mIds:[I

.field private greylist-max-o mLength:I

.field private blacklist mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

.field private greylist-max-o mSpanSequenceCounter:I

.field private greylist-max-o mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field greylist-max-o mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private greylist-max-o mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private greylist-max-o mSpellRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I
    .locals 0

    iget p0, p0, Landroid/widget/SpellChecker;->mLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpellParsers(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/widget/SpellChecker;->mCookie:I

    return-void
.end method

.method private greylist-max-o addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget p2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput p2, p1, v0

    return-void
.end method

.method private greylist-max-o createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 4

    invoke-interface {p1, p3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, p3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    if-ltz v0, :cond_a

    if-gt p3, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    if-eq p5, v1, :cond_1

    add-int/2addr v0, p4

    add-int p3, v0, p5

    :cond_1
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result p4

    const/4 p5, 0x0

    if-lez p4, :cond_2

    new-array v1, p4, [Ljava/lang/String;

    move v2, p5

    :goto_0
    if-ge v2, p4, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-class p4, Ljava/lang/String;

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, [Ljava/lang/String;

    :cond_3
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result p2

    and-int/lit8 p4, p2, 0x10

    const/4 v2, 0x1

    if-nez p4, :cond_4

    move p4, v2

    goto :goto_1

    :cond_4
    move p4, p5

    :goto_1
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5

    or-int/lit8 p4, p4, 0x2

    :cond_5
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_6

    or-int/lit8 p4, p4, 0x8

    :cond_6
    new-instance p2, Landroid/text/style/SuggestionSpan;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3, v1, p4}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    sget-object p4, Landroid/widget/SpellChecker$RemoveReason;->REPLACE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {p1, v0, p3, p4}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p4, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_2

    :cond_7
    move v2, p5

    :goto_2
    if-eqz v2, :cond_8

    new-instance p4, Landroid/text/SpannedString;

    invoke-direct {p4, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    const/4 p4, 0x0

    :goto_3
    const/16 v1, 0x21

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-eqz v2, :cond_9

    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4, v0, p3}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    :cond_9
    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p3, p5}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_a
    :goto_4
    return-void
.end method

.method private blacklist detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit16 v0, p2, -0x15e

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v2, p2, -0x2bc

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit16 v1, p2, 0x2bc

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit16 v2, p2, 0x41a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v0, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v0, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->preceding(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, v0}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sub-int v2, v1, v0

    const/16 v4, 0x15e

    if-gt v2, v4, :cond_3

    :goto_2
    if-ge v1, p3, :cond_5

    iget-object p1, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {p1, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result p1

    if-eq p1, v3, :cond_5

    sub-int p2, p1, v0

    if-le p2, v4, :cond_2

    goto :goto_3

    :cond_2
    move v1, p1

    goto :goto_2

    :cond_3
    sub-int p3, v1, p2

    if-le p3, v4, :cond_4

    add-int/lit16 p3, p2, 0x15e

    invoke-static {p1, p3, v1}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_3

    :cond_4
    add-int/lit16 p2, v1, -0x15e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v0

    :cond_5
    :goto_3
    new-instance p0, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method private static blacklist findSeparator(Ljava/lang/CharSequence;II)I
    .locals 2

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq p1, p2, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    :cond_1
    add-int/2addr p1, v0

    goto :goto_0

    :cond_2
    return p2
.end method

.method public static greylist-max-o haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 0

    if-eq p4, p1, :cond_0

    if-eq p3, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne p4, p1, :cond_1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p4

    if-ge p1, p4, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    return p0

    :cond_1
    if-ne p3, p2, :cond_2

    if-lez p2, :cond_2

    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isSeparator(I)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    const v1, 0x61707000

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o isSessionActive()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o nextSpellCheckSpanIndex()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v2, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/widget/SpellChecker;->mLength:I

    return v0
.end method

.method private greylist-max-o onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v1

    iget v2, p0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v4, v5, :cond_c

    iget-object v5, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v5, v5, v4

    if-ne v1, v5, :cond_b

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v5, v1, v4

    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v4

    and-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    if-lez v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    and-int/lit8 v8, v4, 0x2

    if-lez v8, :cond_3

    move v8, v7

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_4

    move v2, v7

    :cond_4
    add-int v4, v1, p2

    add-int v7, v4, p3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v7, v9, :cond_5

    goto :goto_4

    :cond_5
    if-nez v6, :cond_7

    if-nez v8, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    return-object v5

    :cond_7
    move v6, p2

    move p1, p3

    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, -0x1

    if-eq v6, p3, :cond_8

    if-eq p1, p3, :cond_8

    goto :goto_3

    :cond_8
    move v7, p2

    move v4, v1

    :goto_3
    if-ltz v1, :cond_a

    if-le p2, v1, :cond_a

    if-le v7, v4, :cond_a

    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    :cond_9
    sget-object p2, Landroid/widget/SpellChecker$RemoveReason;->OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v3, v4, v7, p2}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result p2

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4, v7}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    :cond_a
    :goto_4
    return-object v5

    :cond_b
    move v6, p2

    move-object p2, p1

    move p1, p3

    add-int/lit8 v4, v4, 0x1

    move-object p1, p2

    move p2, v6

    goto :goto_0

    :cond_c
    :goto_5
    return-object v0
.end method

.method private static blacklist removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z
    .locals 5

    const-class p3, Landroid/text/style/SuggestionSpan;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/SuggestionSpan;

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p3, v1

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_0

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private blacklist roundUpToWordStart(Ljava/lang/CharSequence;II)I
    .locals 0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result p0

    if-eq p0, p3, :cond_1

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return p3
.end method

.method private greylist-max-o scheduleNewSpellCheck()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private greylist-max-o setLocale(Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-static {p1}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;-><init>(Ljava/text/BreakIterator;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    :cond_0
    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->onLocaleChanged()V

    return-void
.end method

.method private greylist-max-o spellCheck()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    return-void
.end method

.method private blacklist spellCheck(Z)V
    .locals 14

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    iget v8, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v9, v8, [Landroid/view/textservice/TextInfo;

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v11, v1, :cond_8

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v11

    iget-object v3, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v3, v3, v11

    if-ltz v3, :cond_7

    invoke-virtual {v1}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v0, v5, :cond_3

    iget-object v13, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v13, v5}, Landroid/text/method/WordIterator;->isMidWordPunctuation(Ljava/util/Locale;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v10

    goto :goto_2

    :cond_3
    if-le v7, v3, :cond_5

    if-le v0, v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_2

    if-lez v0, :cond_2

    invoke-static {v2, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_5
    :goto_1
    move v5, v6

    :goto_2
    if-ltz v3, :cond_7

    if-le v4, v3, :cond_7

    if-nez p1, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {v1, v6}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    new-instance v1, Landroid/view/textservice/TextInfo;

    iget v5, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v6, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v6, v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    add-int/lit8 v3, v12, 0x1

    aput-object v1, v9, v12

    move v12, v3

    :cond_7
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_8
    if-lez v12, :cond_a

    if-ge v12, v8, :cond_9

    new-array p1, v12, [Landroid/view/textservice/TextInfo;

    invoke-static {v9, v10, p1, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, p1

    :cond_9
    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 p1, 0x5

    invoke-virtual {p0, v9, p1}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public greylist-max-o closeSession()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public whitelist onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    move v5, v1

    :goto_1
    invoke-virtual {v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v6

    if-nez v4, :cond_2

    if-eqz v6, :cond_2

    move-object v4, v6

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    return-void
.end method

.method public whitelist onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    return-void
.end method

.method blacklist onPerformSpellCheck()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    return-void
.end method

.method public greylist-max-o onSelectionChanged()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method public greylist-max-o onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 p1, -0x1

    aput p1, p0, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-o resetSession()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextServicesManagerForUser()Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    return-void
.end method

.method public greylist-max-o spellCheck(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    return-void
.end method

.method public blacklist spellCheck(IIZ)V
    .locals 5

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eq v1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    move p1, v2

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Landroid/widget/SpellChecker$SpellParser;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    new-instance v1, Landroid/widget/SpellChecker$SpellParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker-IA;)V

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v1, p0, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    return-void
.end method
