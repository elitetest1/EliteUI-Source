.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.super Ljava/lang/Object;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LambdaType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
    }
.end annotation


# static fields
.field public static final blacklist MASK:I = 0x7f

.field public static final blacklist MASK_ARG_COUNT:I = 0xf

.field public static final blacklist MASK_BIT_COUNT:I = 0x7

.field public static final blacklist MASK_RETURN_TYPE:I = 0x70


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist argCountPrefix(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xf

    const-string v1, ""

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "arg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Undec"

    return-object p0

    :pswitch_1
    const-string p0, "Dec"

    return-object p0

    :pswitch_2
    const-string p0, "Nona"

    return-object p0

    :pswitch_3
    const-string p0, "Oct"

    return-object p0

    :pswitch_4
    const-string p0, "Hept"

    return-object p0

    :pswitch_5
    const-string p0, "Hex"

    return-object p0

    :pswitch_6
    const-string p0, "Quint"

    return-object p0

    :pswitch_7
    const-string p0, "Quad"

    return-object p0

    :pswitch_8
    const-string p0, "Tri"

    return-object p0

    :pswitch_9
    const-string p0, "Bi"

    return-object p0

    :cond_0
    :pswitch_a
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

.method static blacklist decodeArgCount(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method static blacklist decodeReturnType(I)I
    .locals 1

    const/16 v0, 0x70

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smunmask(II)I

    move-result p0

    return p0
.end method

.method static blacklist encode(II)I
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smmask(II)I

    move-result p0

    const/16 v0, 0x70

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smmask(II)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method static blacklist toString(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result p0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "Runnable"

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :cond_1
    const-string p0, "Supplier"

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->argCountPrefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->lambdaSuffix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
