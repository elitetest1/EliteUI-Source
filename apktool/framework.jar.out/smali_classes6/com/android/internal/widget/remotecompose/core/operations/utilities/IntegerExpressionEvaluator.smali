.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;
.super Ljava/lang/Object;
.source "IntegerExpressionEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator$Op;
    }
.end annotation


# static fields
.field public static final blacklist I_ABS:I = 0x10010

.field public static final blacklist I_ADD:I = 0x10001

.field public static final blacklist I_AND:I = 0x1000a

.field public static final blacklist I_CLAMP:I = 0x10015

.field public static final blacklist I_COPY_SIGN:I = 0x1000c

.field public static final blacklist I_DECR:I = 0x10012

.field public static final blacklist I_DIV:I = 0x10004

.field public static final blacklist I_IFELSE:I = 0x10016

.field public static final blacklist I_INCR:I = 0x10011

.field public static final blacklist I_MAD:I = 0x10017

.field public static final blacklist I_MAX:I = 0x1000e

.field public static final blacklist I_MIN:I = 0x1000d

.field public static final blacklist I_MOD:I = 0x10005

.field public static final blacklist I_MUL:I = 0x10003

.field public static final blacklist I_NEG:I = 0x1000f

.field public static final blacklist I_NOT:I = 0x10013

.field public static final blacklist I_OR:I = 0x10009

.field public static final blacklist I_SHL:I = 0x10006

.field public static final blacklist I_SHR:I = 0x10007

.field public static final blacklist I_SIGN:I = 0x10014

.field public static final blacklist I_SUB:I = 0x10002

.field public static final blacklist I_USHR:I = 0x10008

.field public static final blacklist I_VAR1:I = 0x10018

.field public static final blacklist I_VAR2:I = 0x10019

.field public static final blacklist I_XOR:I = 0x1000b

.field public static final blacklist LAST_OP:F = 25.0f

.field static final blacklist NO_OF_OPS:[I

.field public static final blacklist OFFSET:I = 0x10000

.field private static final blacklist OP_ABS:I = 0x10010

.field private static final blacklist OP_ADD:I = 0x10001

.field private static final blacklist OP_AND:I = 0x1000a

.field private static final blacklist OP_CLAMP:I = 0x10015

.field private static final blacklist OP_COPY_SIGN:I = 0x1000c

.field private static final blacklist OP_DECR:I = 0x10012

.field private static final blacklist OP_DIV:I = 0x10004

.field private static final blacklist OP_FIRST_VAR:I = 0x10018

.field private static final blacklist OP_INCR:I = 0x10011

.field private static final blacklist OP_MAD:I = 0x10017

.field private static final blacklist OP_MAX:I = 0x1000e

.field private static final blacklist OP_MIN:I = 0x1000d

.field private static final blacklist OP_MOD:I = 0x10005

.field private static final blacklist OP_MUL:I = 0x10003

.field private static final blacklist OP_NEG:I = 0x1000f

.field private static final blacklist OP_NOT:I = 0x10013

.field private static final blacklist OP_OR:I = 0x10009

.field private static final blacklist OP_SECOND_VAR:I = 0x10019

.field private static final blacklist OP_SHL:I = 0x10006

.field private static final blacklist OP_SHR:I = 0x10007

.field private static final blacklist OP_SIGN:I = 0x10014

.field private static final blacklist OP_SUB:I = 0x10002

.field private static final blacklist OP_TERNARY_CONDITIONAL:I = 0x10016

.field private static final blacklist OP_THIRD_VAR:I = 0x1001a

.field private static final blacklist OP_USHR:I = 0x10008

.field private static final blacklist OP_XOR:I = 0x1000b

.field static blacklist sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mLocalStack:[I

.field blacklist mStack:[I

.field blacklist mVar:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "NOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "-"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "*"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "%"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "<<"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, ">>"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, ">>>"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "|"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "&"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "^"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "copySign"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "min"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "max"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "neg"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "abs"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "incr"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "decr"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "not"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "sign"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "clamp"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ifElse"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string/jumbo v1, "mad"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "ceil"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[0]"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[1]"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "a[2]"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->NO_OF_OPS:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    return-void
.end method

.method static blacklist infix(I)Z
    .locals 1

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isOperation(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist toMathName(I)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist toString(I[I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget v2, p1, v1

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    const-string v4, " "

    if-eqz v3, :cond_1

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist toString(I[II)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    shl-int v1, v0, p2

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    aget v1, p1, p2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->NO_OF_OPS:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const-string v3, ") "

    const-string v4, "("

    if-eq v2, v0, :cond_4

    const-string v5, ")"

    const-string v6, ", "

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->infix(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x3

    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x2

    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, -0x3

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, -0x2

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->infix(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p2, -0x2

    invoke-static {p0, p1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, -0x2

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string/jumbo p0, "nop"

    return-object p0

    :cond_6
    :goto_0
    aget p0, p1, p2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget v2, p1, v1

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    aget-object v3, p2, v1

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toStringInfix(I[I)Ljava/lang/String;
    .locals 1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs blacklist eval(I[II[I)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    const/4 p2, -0x1

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v0, p4, v1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result p2

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    aput v0, p4, p2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p0, p0, p2

    return p0
.end method

.method public varargs blacklist eval(I[I[I)I
    .locals 3

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    const/4 p2, -0x1

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    array-length v1, v0

    if-ge p3, v1, :cond_1

    aget v1, v0, p3

    const/4 v2, 0x1

    shl-int/2addr v2, p3

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result p2

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    aput v1, v0, p2

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    aget p0, v0, p2

    return p0
.end method

.method public varargs blacklist evalDB(I[I[I)I
    .locals 4

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    const/4 p3, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result p3

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    aput v2, v1, p3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p0, p0, p3

    return p0
.end method

.method blacklist opEval(II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    aput p0, p2, p1

    return p1

    :pswitch_1
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    aget p0, p0, v1

    aput p0, p2, p1

    return p1

    :pswitch_2
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    aget p0, p0, v0

    aput p0, p2, p1

    return p1

    :pswitch_3
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x2

    aget v0, p0, p1

    sub-int/2addr p1, v1

    aget p1, p0, p1

    aget v1, p0, p2

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    :pswitch_4
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x2

    aget v0, p0, p1

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    aget p1, p0, p1

    goto :goto_0

    :cond_0
    aget p1, p0, p2

    :goto_0
    aput p1, p0, p2

    return p2

    :pswitch_5
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, p1, -0x2

    aget v2, p2, v0

    aget v3, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    sub-int/2addr p1, v1

    aget p0, p0, p1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aput p0, p2, v0

    return v0

    :pswitch_6
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p2, p0, p1

    shr-int/lit8 v0, p2, 0x1f

    neg-int p2, p2

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v0

    aput p2, p0, p1

    return p1

    :pswitch_7
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p2, p0, p1

    not-int p2, p2

    aput p2, p0, p1

    return p1

    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p2, p0, p1

    sub-int/2addr p2, v1

    aput p2, p0, p1

    return p1

    :pswitch_9
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p2, p0, p1

    add-int/2addr p2, v1

    aput p2, p0, p1

    return p1

    :pswitch_a
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p2, p0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    aput p2, p0, p1

    return p1

    :pswitch_b
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget p2, p0, p1

    neg-int p2, p2

    aput p2, p0, p1

    return p1

    :pswitch_c
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p0, p2

    return p2

    :pswitch_d
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aput p1, p0, p2

    return p2

    :pswitch_e
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x1f

    sub-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    :pswitch_f
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    xor-int/2addr p1, v0

    aput p1, p0, p2

    return p2

    :pswitch_10
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    and-int/2addr p1, v0

    aput p1, p0, p2

    return p2

    :pswitch_11
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    return p2

    :pswitch_12
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    ushr-int p1, v0, p1

    aput p1, p0, p2

    return p2

    :pswitch_13
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    shr-int p1, v0, p1

    aput p1, p0, p2

    return p2

    :pswitch_14
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    shl-int p1, v0, p1

    aput p1, p0, p2

    return p2

    :pswitch_15
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    rem-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    :pswitch_16
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    div-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    :pswitch_17
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    mul-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    :pswitch_18
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    sub-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    :pswitch_19
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 p2, p1, -0x1

    aget v0, p0, p2

    aget p1, p0, p1

    add-int/2addr v0, p1

    aput v0, p0, p2

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
