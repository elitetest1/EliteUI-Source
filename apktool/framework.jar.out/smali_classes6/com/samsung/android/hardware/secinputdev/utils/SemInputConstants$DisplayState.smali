.class public final enum Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
.super Ljava/lang/Enum;
.source "SemInputConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist DOZE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum blacklist SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;


# instance fields
.field private blacklist isExternal:Z

.field private blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 8

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v1, -0x1

    const-string v2, "SHUTDOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "ON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "DOZE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "DOZE_SUSPEND"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v1, 0x6

    const/16 v3, 0x15

    const-string v4, "FORCE_OFF"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v1, 0x7

    const/16 v3, 0x16

    const-string v4, "FORCE_ON"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->$values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    iput-boolean p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->isExternal:Z

    return-void
.end method

.method public static blacklist getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 5

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->isExternal:Z

    return p0
.end method

.method public blacklist toInt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->toInt()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
