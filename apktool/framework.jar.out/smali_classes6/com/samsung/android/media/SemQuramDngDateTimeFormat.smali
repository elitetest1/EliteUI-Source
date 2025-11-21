.class public final enum Lcom/samsung/android/media/SemQuramDngDateTimeFormat;
.super Ljava/lang/Enum;
.source "SemQuramDngDateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SemQuramDngDateTimeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

.field public static final enum blacklist QuramDngDateTimeFormatExif:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

.field public static final enum blacklist QuramDngDateTimeFormatUnixBigEndian:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

.field public static final enum blacklist QuramDngDateTimeFormatUnixLittleEndian:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

.field public static final enum blacklist QuramDngDateTimeFormatUnknown:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;


# instance fields
.field public blacklist date:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/media/SemQuramDngDateTimeFormat;
    .locals 4

    sget-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatUnknown:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    sget-object v1, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatExif:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    sget-object v2, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixLittleEndian:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    sget-object v3, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixBigEndian:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatUnknown:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    new-instance v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatExif"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatExif:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    new-instance v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatUnixLittleEndian"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixLittleEndian:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    new-instance v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatUnixBigEndian"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixBigEndian:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    invoke-static {}, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->$values()[Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->$VALUES:[Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->date:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SemQuramDngDateTimeFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/SemQuramDngDateTimeFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->$VALUES:[Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    return-object v0
.end method


# virtual methods
.method public blacklist getData()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngDateTimeFormat;->date:I

    return p0
.end method
