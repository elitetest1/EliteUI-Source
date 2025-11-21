.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;
.super Ljava/lang/Object;
.source "NanMap.java"


# static fields
.field public static final blacklist CLOSE:I = 0x300005

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CONIC:I = 0x300003

.field public static final blacklist CONIC_NAN:F

.field public static final blacklist CUBIC:I = 0x300004

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist DONE:I = 0x300006

.field public static final blacklist DONE_NAN:F

.field public static final blacklist ID_REGION_ARRAY:I = 0x200000

.field public static final blacklist ID_REGION_MASK:I = 0x700000

.field public static final blacklist LINE:I = 0x300001

.field public static final blacklist LINE_NAN:F

.field public static final blacklist MOVE:I = 0x300000

.field public static final blacklist MOVE_NAN:F

.field public static final blacklist QUADRATIC:I = 0x300002

.field public static final blacklist QUADRATIC_NAN:F

.field public static final blacklist START_ARRAY:I = 0x20002a

.field public static final blacklist START_VAR:I = 0x10002a

.field public static final blacklist TYPE_ARRAY:I = 0x2

.field public static final blacklist TYPE_OPERATION:I = 0x3

.field public static final blacklist TYPE_SYSTEM:I = 0x0

.field public static final blacklist TYPE_VARIABLE:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/high16 v0, 0x300000

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MOVE_NAN:F

    const v0, 0x300001

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->LINE_NAN:F

    const v0, 0x300002

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->QUADRATIC_NAN:F

    const v0, 0x300003

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CONIC_NAN:F

    const v0, 0x300004

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CUBIC_NAN:F

    const v0, 0x300005

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CLOSE_NAN:F

    const v0, 0x300006

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->DONE_NAN:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asNan(I)F
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static blacklist fromNaN(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    const v0, 0x7fffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist isDataVariable(F)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x14

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isNormalVariable(F)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x14

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isOperationVariable(F)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x14

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isSystemVariable(F)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x14

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
