.class final Landroid/service/autofill/NegationValidator;
.super Landroid/service/autofill/InternalValidator;
.source "NegationValidator.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/NegationValidator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/NegationValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/NegationValidator$1;-><init>()V

    sput-object v0, Landroid/service/autofill/NegationValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/InternalValidator;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InternalValidator;

    iput-object p1, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isValid(Landroid/service/autofill/ValueFinder;)Z
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p0, p1}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NegationValidator: [validator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
