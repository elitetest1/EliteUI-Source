.class public final Landroid/view/inputmethod/TextBoundsInfo;
.super Ljava/lang/Object;
.source "TextBoundsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/TextBoundsInfo$Builder;,
        Landroid/view/inputmethod/TextBoundsInfo$CharacterFlags;
    }
.end annotation


# static fields
.field private static final blacklist BIDI_LEVEL_MASK:I = 0x3f80000

.field private static final blacklist BIDI_LEVEL_SHIFT:I = 0x13

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/TextBoundsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_CHARACTER_LINEFEED:I = 0x2

.field public static final whitelist FLAG_CHARACTER_PUNCTUATION:I = 0x4

.field public static final whitelist FLAG_CHARACTER_WHITESPACE:I = 0x1

.field private static final blacklist FLAG_GRAPHEME_SEGMENT_END:I = 0x4000000

.field private static final blacklist FLAG_GRAPHEME_SEGMENT_START:I = 0x8000000

.field public static final whitelist FLAG_LINE_IS_RTL:I = 0x8

.field private static final blacklist FLAG_LINE_SEGMENT_END:I = 0x40000000

.field private static final blacklist FLAG_LINE_SEGMENT_START:I = -0x80000000

.field private static final blacklist FLAG_WORD_SEGMENT_END:I = 0x10000000

.field private static final blacklist FLAG_WORD_SEGMENT_START:I = 0x20000000

.field private static final blacklist KNOWN_CHARACTER_FLAGS:I = 0xf

.field private static final blacklist TEXT_BOUNDS_INFO_KEY:Ljava/lang/String; = "android.view.inputmethod.TextBoundsInfo"


# instance fields
.field private final blacklist mCharacterBounds:[F

.field private final blacklist mEnd:I

.field private final blacklist mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

.field private final blacklist mInternalCharacterFlags:[I

.field private final blacklist mLineSegmentFinder:Landroid/text/SegmentFinder;

.field private final blacklist mMatrixValues:[F

.field private final blacklist mStart:I

.field private final blacklist mWordSegmentFinder:Landroid/text/SegmentFinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/inputmethod/TextBoundsInfo;->isLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/TextBoundsInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/TextBoundsInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/TextBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/high16 v2, 0x8000000

    const/high16 v3, 0x4000000

    invoke-static {p1, v2, v3, v0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, 0x20000000

    const/high16 v3, 0x10000000

    invoke-static {p1, v2, v3, v0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v2, v3, v0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    sub-int/2addr v1, v0

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget v3, p1, v0

    const v4, 0x3f8000f

    and-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/TextBoundsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmStart(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmEnd(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    sub-int/2addr v1, v0

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterBounds(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F

    move-result-object v0

    mul-int/lit8 v2, v1, 0x4

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterFlags(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmCharacterBidiLevels(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I

    move-result-object v4

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x13

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmGraphemeSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmWordSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    invoke-static {p1}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->-$$Nest$fgetmLineSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;Landroid/view/inputmethod/TextBoundsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;)V

    return-void
.end method

.method public static blacklist createFromBundle(Landroid/os/Bundle;)Landroid/view/inputmethod/TextBoundsInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.view.inputmethod.TextBoundsInfo"

    const-class v1, Landroid/view/inputmethod/TextBoundsInfo;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/TextBoundsInfo;

    return-object p0
.end method

.method private static blacklist decodeSegmentFinder([IIIII)Landroid/text/SegmentFinder;
    .locals 4

    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_3

    const/16 p4, 0xa

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    add-int v3, p3, v0

    invoke-static {p4, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p4

    move v1, v2

    :cond_0
    aget v2, p0, v0

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    add-int v3, p3, v0

    invoke-static {p4, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p4

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;-><init>([I)V

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The given flags array must have the same length as the given range. flags length: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " range: ["

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V
    .locals 5

    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_3

    invoke-virtual {p5, p3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    :goto_0
    if-eq v0, v1, :cond_2

    if-gt v0, p4, :cond_2

    if-lt v2, p3, :cond_1

    sub-int v3, v2, p3

    aget v4, p0, v3

    or-int/2addr v4, p1

    aput v4, p0, v3

    sub-int v3, v0, p3

    aget v4, p0, v3

    or-int/2addr v4, p2

    aput v4, p0, v3

    :cond_1
    invoke-virtual {p5, v2}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v2

    invoke-virtual {p5, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "The given flags array must have the same length as the given range. flags length: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " range: ["

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getBoundsForRange(IILandroid/graphics/RectF;)V
    .locals 4

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "start"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-gt p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    return-void

    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iput v0, p3, Landroid/graphics/RectF;->top:F

    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    :goto_0
    if-ge p1, p2, :cond_1

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int v0, p1, v0

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 v0, v0, 0x4

    aget v2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    add-int/lit8 v0, v0, 0x3

    aget v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist getCursorHorizontalPosition(IIIFF)F
    .locals 4

    const-string v0, "index"

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-virtual {p0, p2}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/TextBoundsInfo;->primaryIsTrailingPrevious(III)Z

    move-result v3

    if-eqz v3, :cond_2

    if-gt p1, p2, :cond_1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move p2, v1

    goto :goto_2

    :cond_2
    if-lt p1, p3, :cond_5

    if-eqz v0, :cond_4

    :cond_3
    return p4

    :cond_4
    :goto_1
    return p5

    :cond_5
    move p2, v2

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result p3

    and-int/2addr p3, v2

    if-eqz p3, :cond_6

    move v1, v2

    :cond_6
    iget p3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr p1, p3

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    mul-int/lit8 p1, p1, 0x4

    if-eq v1, p2, :cond_7

    aget p0, p0, p1

    return p0

    :cond_7
    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private blacklist getEndForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 9

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 v1, p2, -0x1

    move v2, v0

    :goto_0
    if-lt v1, p1, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v8

    if-eq v8, v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p0

    move-object p2, v2

    if-eq p0, v0, :cond_1

    return p0

    :cond_1
    move v2, v8

    goto :goto_1

    :cond_2
    move v4, p2

    move-object p2, p0

    move v3, v4

    :goto_1
    add-int/lit8 v1, v1, -0x1

    move-object p0, p2

    move p2, v3

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p0

    return p0
.end method

.method private blacklist getEndForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 6

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p4, p2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    if-eq v2, v0, :cond_3

    if-le v2, p1, :cond_3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    invoke-interface {p5, v3, p3}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    invoke-virtual {p4, v2}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private blacklist getLineInfo(F[ILandroid/graphics/RectF;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p2, v0

    const/4 v2, 0x1

    aput v1, p2, v2

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v3, v4}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v4, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x1

    move v8, v7

    move v7, v6

    :goto_0
    if-eq v4, v1, :cond_5

    iget v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge v4, v9, :cond_5

    iget v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    iget v9, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v5, p1}, Landroid/view/inputmethod/TextBoundsInfo;->verticalDistance(Landroid/graphics/RectF;F)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-nez v10, :cond_1

    aput v4, p2, v0

    aput v3, p2, v2

    if-eqz p3, :cond_7

    invoke-virtual {p3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :cond_1
    cmpg-float v10, v9, v7

    if-gez v10, :cond_3

    aput v4, p2, v0

    aput v3, p2, v2

    if-eqz p3, :cond_2

    invoke-virtual {p3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    move v7, v9

    :cond_3
    iget v9, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v9, p1, v9

    if-gez v9, :cond_4

    goto :goto_1

    :cond_4
    iget-object v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v9, v4}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v4

    iget-object v9, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v9, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v3

    goto :goto_0

    :cond_5
    :goto_1
    cmpg-float p0, p1, v6

    if-ltz p0, :cond_6

    cmpl-float p0, p1, v8

    if-lez p0, :cond_7

    :cond_6
    aput v1, p2, v0

    aput v1, p2, v2

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    :cond_7
    :goto_2
    return-void
.end method

.method private blacklist getStartForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 9

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    move v3, p1

    move v7, v0

    :goto_0
    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result v8

    move-object v1, p0

    if-eq v8, v7, :cond_2

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p0

    if-eq p0, v0, :cond_1

    return p0

    :cond_1
    move p1, v3

    move v7, v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v1

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result p0

    return p0
.end method

.method private blacklist getStartForRectWithinRun(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 6

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p4, p1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    if-eq v2, v0, :cond_3

    if-ge v2, p2, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Landroid/view/inputmethod/TextBoundsInfo;->getBoundsForRange(IILandroid/graphics/RectF;)V

    invoke-interface {p5, v3, p3}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    invoke-virtual {p4, v2}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v2

    invoke-virtual {p4, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static blacklist isLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z
    .locals 9

    invoke-virtual {p1, p2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_5

    if-ge v3, p3, :cond_5

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v4, p2

    aget v6, p0, v6

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v7

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_4

    sub-int v8, v4, p2

    aget v8, p0, v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    if-eq v8, v6, :cond_2

    return v7

    :cond_4
    invoke-virtual {p1, v3}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v0

    goto :goto_0

    :cond_5
    return v1
.end method

.method private blacklist primaryIsTrailingPrevious(III)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ge p1, p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p0, p3}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result p3

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-le p1, p2, :cond_2

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterBidiLevel(I)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result p0

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    if-ge p0, p3, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private static blacklist verticalDistance(Landroid/graphics/RectF;F)F
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    return p0

    :cond_1
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCharacterBidiLevel(I)I
    .locals 2

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v1, :cond_0

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget p0, p0, p1

    const/high16 p1, 0x3f80000

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x13

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index is out of the bounds of ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getCharacterBounds(ILandroid/graphics/RectF;)V
    .locals 3

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v1, :cond_0

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x4

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget p0, p0, p1

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Index is out of the bounds of ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getCharacterFlags(I)I
    .locals 2

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    if-ge p1, v1, :cond_0

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    aget p0, p0, p1

    and-int/lit8 p0, p0, 0xf

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index is out of the bounds of ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getEndIndex()I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    return p0
.end method

.method public whitelist getGraphemeSegmentFinder()Landroid/text/SegmentFinder;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    return-object p0
.end method

.method public whitelist getLineSegmentFinder()Landroid/text/SegmentFinder;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    return-object p0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public whitelist getOffsetForPosition(FF)I
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p0, p2, v1, v2}, Landroid/view/inputmethod/TextBoundsInfo;->getLineInfo(F[ILandroid/graphics/RectF;)V

    const/4 p2, 0x0

    aget v5, v1, p2

    const/4 p2, -0x1

    if-eq v5, p2, :cond_6

    const/4 v3, 0x1

    aget v6, v1, v3

    if-ne v6, p2, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/TextBoundsInfo;->getCharacterFlags(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v6, 0x1

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    if-ne v1, p2, :cond_2

    return p2

    :cond_2
    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v9, p2

    move v4, v1

    move v1, v3

    :goto_1
    if-eq v4, p2, :cond_5

    if-ge v4, v0, :cond_5

    if-lt v4, v5, :cond_3

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->right:F

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/TextBoundsInfo;->getCursorHorizontalPosition(IIIFF)F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v7, p0, v1

    if-gez v7, :cond_4

    move v1, p0

    move v9, v4

    goto :goto_2

    :cond_3
    move-object v3, p0

    :cond_4
    :goto_2
    iget-object p0, v3, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {p0, v4}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v4

    move-object p0, v3

    goto :goto_1

    :cond_5
    return v9

    :cond_6
    :goto_3
    return p2
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .locals 9

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {v1, v2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    return-object v6

    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v2, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    move v8, v7

    :goto_0
    if-eq v1, v7, :cond_1

    if-ne v8, v7, :cond_1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getStartForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v8

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v1}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v1

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    goto :goto_0

    :cond_1
    if-ne v8, v7, :cond_2

    return-object v6

    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {v1, v2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    if-ne v1, v7, :cond_3

    return-object v6

    :cond_3
    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v2, v1}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    move v6, v7

    :goto_1
    if-le v2, v8, :cond_4

    if-ne v6, v7, :cond_4

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/TextBoundsInfo;->getEndForRectWithinLine(IILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v6

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    iget-object v3, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    invoke-virtual {v3, v2}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v2

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2, v8}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v6}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStartIndex()I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    return p0
.end method

.method public whitelist getWordSegmentFinder()Landroid/text/SegmentFinder;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    return-object p0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.view.inputmethod.TextBoundsInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mMatrixValues:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mCharacterBounds:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Landroid/view/inputmethod/TextBoundsInfo;->mInternalCharacterFlags:[I

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, 0x8000000

    const/high16 v3, 0x4000000

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, 0x20000000

    const/high16 v3, 0x10000000

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo;->mStart:I

    iget v5, p0, Landroid/view/inputmethod/TextBoundsInfo;->mEnd:I

    iget-object v6, p0, Landroid/view/inputmethod/TextBoundsInfo;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/TextBoundsInfo;->encodeSegmentFinder([IIIIILandroid/text/SegmentFinder;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
