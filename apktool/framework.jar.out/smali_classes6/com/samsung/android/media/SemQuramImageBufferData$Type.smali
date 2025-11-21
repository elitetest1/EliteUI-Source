.class public final enum Lcom/samsung/android/media/SemQuramImageBufferData$Type;
.super Ljava/lang/Enum;
.source "SemQuramImageBufferData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemQuramImageBufferData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SemQuramImageBufferData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/SemQuramImageBufferData$Type;

.field public static final enum blacklist BITMAP:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

.field public static final enum blacklist BUFFER:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

.field public static final enum blacklist HANDLE:Lcom/samsung/android/media/SemQuramImageBufferData$Type;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/media/SemQuramImageBufferData$Type;
    .locals 3

    sget-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BITMAP:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    sget-object v1, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BUFFER:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    sget-object v2, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->HANDLE:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    const-string v1, "BITMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemQuramImageBufferData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BITMAP:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    new-instance v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    const-string v1, "BUFFER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemQuramImageBufferData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->BUFFER:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    new-instance v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    const-string v1, "HANDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemQuramImageBufferData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->HANDLE:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    invoke-static {}, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->$values()[Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->$VALUES:[Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SemQuramImageBufferData$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/SemQuramImageBufferData$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->$VALUES:[Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SemQuramImageBufferData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    return-object v0
.end method
