.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$PatternType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_PATTERN_STORAGE:I = 0x800

.field private static final greylist-max-o NO_MATCH:I = -0x1

.field private static final greylist-max-o PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final greylist-max-o PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final greylist-max-o PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final greylist-max-o PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final greylist-max-o PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final whitelist PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final whitelist PATTERN_LITERAL:I = 0x0

.field public static final whitelist PATTERN_PREFIX:I = 0x1

.field public static final whitelist PATTERN_SIMPLE_GLOB:I = 0x2

.field public static final whitelist PATTERN_SUFFIX:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final greylist-max-o TOKEN_TYPE_ANY:I = 0x1

.field private static final greylist-max-o TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final greylist-max-o TOKEN_TYPE_LITERAL:I = 0x0

.field private static final greylist-max-o TOKEN_TYPE_SET:I = 0x2

.field private static final greylist-max-o sParsedPatternScratch:[I


# instance fields
.field private final greylist-max-o mParsedPattern:[I

.field private final greylist-max-o mPattern:Ljava/lang/String;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method private static greylist-max-o isParsedModifier(I)Z
    .locals 1

    const/4 v0, -0x8

    if-eq p0, v0, :cond_1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static greylist-max-o matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 13

    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v10, 0x0

    move v1, v10

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v1, v0, :cond_a

    aget v7, p0, v1

    const/4 v8, -0x4

    const/4 v11, -0x1

    if-eq v7, v8, :cond_3

    const/4 v4, -0x2

    if-eq v7, v4, :cond_0

    if-eq v7, v11, :cond_0

    add-int/lit8 v4, v1, 0x1

    move v8, v1

    move v9, v5

    move v1, v10

    goto :goto_3

    :cond_0
    if-ne v7, v11, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    :goto_1
    add-int/lit8 v5, v1, 0x1

    :goto_2
    add-int/lit8 v7, v1, 0x1

    if-ge v7, v0, :cond_2

    aget v8, p0, v7

    const/4 v9, -0x3

    if-eq v8, v9, :cond_2

    move v1, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v1, 0x2

    move v9, v1

    move v1, v4

    move v8, v5

    move v4, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v8, v4

    move v9, v5

    move v4, v1

    move v1, v6

    :goto_3
    if-lt v4, v0, :cond_4

    :goto_4
    move v12, v4

    move v5, v6

    goto :goto_7

    :cond_4
    aget v5, p0, v4

    const/4 v7, -0x8

    const v12, 0x7fffffff

    if-eq v5, v7, :cond_7

    const/4 v7, -0x7

    if-eq v5, v7, :cond_6

    const/4 v7, -0x5

    if-eq v5, v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v4, 0x1

    aget v6, p0, v5

    add-int/lit8 v5, v4, 0x2

    aget v5, p0, v5

    add-int/lit8 v4, v4, 0x4

    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v5, v10

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    :goto_5
    move v6, v12

    :goto_6
    move v12, v4

    :goto_7
    if-le v5, v6, :cond_8

    return v10

    :cond_8
    move-object v7, p0

    move v4, v1

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result p0

    if-ne p0, v11, :cond_9

    return v10

    :cond_9
    add-int/2addr v2, p0

    move-object p0, v7

    move v4, v8

    move v5, v9

    move v1, v12

    goto :goto_0

    :cond_a
    if-lt v1, v0, :cond_b

    if-lt v2, v3, :cond_b

    return v6

    :cond_b
    return v10
.end method

.method private static greylist-max-o matchChar(Ljava/lang/String;III[III)Z
    .locals 2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    if-eqz p3, :cond_8

    if-eq p3, p2, :cond_7

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    return v0

    :cond_1
    :goto_0
    if-ge p5, p6, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    aget v1, p4, p5

    if-lt p3, v1, :cond_2

    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    if-gt p3, v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p5, p5, 0x2

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    :goto_1
    if-ge p5, p6, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    aget v1, p4, p5

    if-lt p3, v1, :cond_5

    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    if-gt p3, v1, :cond_5

    return p2

    :cond_5
    add-int/lit8 p5, p5, 0x2

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    return p2

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aget p1, p4, p5

    if-ne p0, p1, :cond_9

    return p2

    :cond_9
    return v0
.end method

.method private static greylist-max-o matchChars(Ljava/lang/String;IIIII[III)I
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v2, p1, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, p4, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    return v0
.end method

.method static greylist-max-o matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v1

    move v6, v5

    :goto_0
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v5, v0, :cond_11

    if-ge v6, v3, :cond_11

    add-int/lit8 v9, v5, 0x1

    if-ge v9, v0, :cond_2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    const/16 v11, 0x5c

    if-ne v4, v11, :cond_3

    move v12, v2

    goto :goto_2

    :cond_3
    move v12, v1

    :goto_2
    if-eqz v12, :cond_5

    add-int/lit8 v9, v5, 0x2

    if-ge v9, v0, :cond_4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    move v13, v10

    move v10, v4

    move v4, v13

    :cond_5
    if-ne v10, v7, :cond_f

    if-nez v12, :cond_c

    if-ne v4, v8, :cond_c

    add-int/lit8 v4, v0, -0x1

    if-lt v9, v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v4, v9, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_8

    add-int/lit8 v4, v9, 0x2

    if-ge v4, v0, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_7
    move v5, v1

    :cond_8
    :goto_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_8

    :goto_5
    if-ne v6, v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_b

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    :cond_b
    move v5, v1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_0

    :cond_c
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_c

    :goto_7
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v0, :cond_e

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_8

    :cond_e
    move v4, v1

    :goto_8
    move v5, v9

    goto :goto_0

    :cond_f
    if-eq v4, v8, :cond_10

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_10

    return v1

    :cond_10
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    move v4, v10

    goto/16 :goto_0

    :cond_11
    if-lt v5, v0, :cond_12

    if-lt v6, v3, :cond_12

    return v2

    :cond_12
    add-int/lit8 v0, v0, -0x2

    if-ne v5, v0, :cond_13

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_13

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v7, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method static greylist-max-o matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p2, 0x4

    if-ne p3, p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method static declared-synchronized greylist-max-o parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 14

    const-class v0, Landroid/os/PatternMatcher;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v3, v1, :cond_18

    const/16 v8, 0x7fd

    if-gt v5, v8, :cond_17

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    const/16 v10, 0x7d

    const/4 v11, 0x1

    if-eq v8, v9, :cond_b

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_9

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_8

    const/16 v9, 0x7b

    if-eq v8, v9, :cond_6

    if-eq v8, v10, :cond_5

    const/4 v9, -0x2

    const/4 v12, -0x1

    packed-switch v8, :pswitch_data_0

    :goto_1
    move v9, v11

    goto/16 :goto_5

    :pswitch_0
    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v7, v5, -0x1

    aget v7, v4, v7

    if-eq v7, v12, :cond_1

    if-eq v7, v9, :cond_1

    add-int/lit8 v7, v5, 0x1

    const/4 v9, -0x3

    aput v9, v4, v5

    move v4, v2

    move v9, v4

    move v5, v7

    move v7, v9

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must define characters in a set."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Escape found at end of pattern!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x5e

    if-ne v8, v10, :cond_4

    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v5, 0x1

    aput v9, v3, v5

    move v3, v4

    goto :goto_2

    :cond_4
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v5, 0x1

    aput v12, v4, v5

    :goto_2
    move v5, v8

    add-int/2addr v3, v11

    move v4, v11

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    const/4 v12, -0x6

    aput v12, v6, v5

    move v6, v2

    move v5, v9

    move v9, v6

    goto/16 :goto_5

    :cond_6
    if-nez v4, :cond_d

    if-eqz v5, :cond_7

    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, -0x1

    aget v9, v6, v9

    invoke-static {v9}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v9

    if-nez v9, :cond_7

    add-int/lit8 v9, v5, 0x1

    const/4 v12, -0x5

    aput v12, v6, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v9

    move v6, v11

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v4, :cond_d

    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x4

    aput v13, v9, v5

    :goto_3
    move v9, v2

    move v5, v12

    goto :goto_5

    :cond_9
    if-nez v4, :cond_d

    if-eqz v5, :cond_a

    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, -0x1

    aget v12, v9, v12

    invoke-static {v12}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v12

    if-nez v12, :cond_a

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x8

    aput v13, v9, v5

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-nez v4, :cond_d

    if-eqz v5, :cond_c

    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, -0x1

    aget v12, v9, v12

    invoke-static {v12}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v12

    if-nez v12, :cond_c

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x7

    aput v13, v9, v5

    goto :goto_3

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_4
    move v9, v2

    :goto_5
    if-eqz v4, :cond_10

    if-eqz v7, :cond_e

    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    aput v8, v7, v5

    move v7, v2

    move v5, v9

    goto/16 :goto_8

    :cond_e
    add-int/lit8 v9, v3, 0x2

    if-ge v9, v1, :cond_f

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_f

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x5d

    if-eq v9, v12, :cond_f

    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v7, v5, 0x1

    aput v8, v3, v5

    move v5, v7

    move v3, v10

    move v7, v11

    goto/16 :goto_8

    :cond_f
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    aput v8, v9, v5

    add-int/lit8 v5, v5, 0x2

    aput v8, v9, v10

    goto/16 :goto_8

    :cond_10
    if-eqz v6, :cond_15

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ltz v8, :cond_14

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x2c

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v9, :cond_11

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    goto :goto_7

    :cond_11
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v11

    if-ne v9, v12, :cond_12

    const v3, 0x7fffffff

    :goto_6
    move v9, v3

    move v3, v10

    goto :goto_7

    :cond_12
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_6

    :goto_7
    if-gt v3, v9, :cond_13

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v5, 0x1

    aput v3, v10, v5

    add-int/lit8 v5, v5, 0x2

    aput v9, v10, v11

    move v3, v8

    goto/16 :goto_0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range quantifier minimum is greater than maximum"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Range number format incorrect"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range not ended with \'}\'"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    if-eqz v9, :cond_16

    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    aput v8, v9, v5

    move v5, v10

    :cond_16
    :goto_8
    add-int/2addr v3, v11

    goto/16 :goto_0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is too large!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    if-nez v4, :cond_19

    sget-object p0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_19
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set was not terminated!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist check()Z
    .locals 2

    :try_start_0
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget-object p0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to verify advanced pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PatternMatcher"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10e00000002L

    iget p0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final whitelist getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/os/PatternMatcher;->mType:I

    return p0
.end method

.method public whitelist match(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget p0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, p0}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "? "

    goto :goto_0

    :cond_0
    const-string v0, "SUFFIX: "

    goto :goto_0

    :cond_1
    const-string v0, "ADVANCED: "

    goto :goto_0

    :cond_2
    const-string v0, "GLOB: "

    goto :goto_0

    :cond_3
    const-string v0, "PREFIX: "

    goto :goto_0

    :cond_4
    const-string v0, "LITERAL: "

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PatternMatcher{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
