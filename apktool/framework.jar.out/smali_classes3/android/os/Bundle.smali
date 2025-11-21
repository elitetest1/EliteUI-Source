.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Bundle$HasBinderStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/Bundle;

.field static final greylist-max-o FLAG_ALLOW_FDS:I = 0x400

.field static final blacklist FLAG_HAS_BINDERS:I = 0x1000

.field static final blacklist FLAG_HAS_BINDERS_KNOWN:I = 0x800

.field static final greylist-max-o FLAG_HAS_FDS:I = 0x100

.field static final greylist-max-o FLAG_HAS_FDS_KNOWN:I = 0x200

.field static final blacklist FLAG_HAS_INTENT:I = 0x4000

.field static final blacklist FLAG_VERIFY_TOKENS_PRESENT:I = 0x2000

.field public static final blacklist STATUS_BINDERS_NOT_PRESENT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATUS_BINDERS_PRESENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATUS_BINDERS_UNKNOWN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o STRIPPED:Landroid/os/Bundle;

.field public static blacklist intentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isFirstRetrievedFromABundle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    const-string v1, "STRIPPED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    const/16 v0, 0xe00

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    const/16 p1, 0xe00

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    iget p1, p1, Landroid/os/Bundle;->mFlags:I

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    const/16 p1, 0x400

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    const/16 p1, 0x400

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    const/16 p1, 0xe00

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    const/16 p1, 0xe00

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public static greylist-max-r forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o maybePrefillHasFds()V
    .locals 1

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x300

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void

    :cond_0
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :cond_1
    return-void
.end method

.method public static greylist setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public whitelist clear()V
    .locals 1

    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 0

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    const-wide v1, 0x10500000001L

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist enableTokenVerification()V
    .locals 1

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getByte(Ljava/lang/String;)B
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method public whitelist getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getByteArray(Ljava/lang/String;)[B
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist getChar(Ljava/lang/String;)C
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result p0

    return p0
.end method

.method public whitelist getChar(Ljava/lang/String;C)C
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result p0

    return p0
.end method

.method public whitelist getCharArray(Ljava/lang/String;)[C
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getFloat(Ljava/lang/String;)F
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public whitelist getFloatArray(Ljava/lang/String;)[F
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public greylist getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "Parcelable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "Parcelable[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    :try_start_0
    const-class v0, [Landroid/os/Parcelable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "ArrayList"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getShort(Ljava/lang/String;)S
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public whitelist getShort(Ljava/lang/String;S)S
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result p0

    return p0
.end method

.method public whitelist getShortArray(Ljava/lang/String;)[S
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getSize()I
    .locals 1

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    check-cast v0, Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Size"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    check-cast v0, Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "SizeF"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "SparseArray"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-object v1
.end method

.method public whitelist getSparseParcelableArray(Ljava/lang/String;Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    :try_start_0
    const-class v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SparseArray<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasBinders()I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-nez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->hasBinders()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x1800

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return v1

    :cond_3
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    return v2
.end method

.method public whitelist hasFileDescriptors()Z
    .locals 1

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    :goto_0
    invoke-static {v0}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    :goto_1
    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    :cond_2
    iget p0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasIntent()Z
    .locals 0

    invoke-super {p0}, Landroid/os/BaseBundle;->hasIntent()Z

    move-result p0

    return p0
.end method

.method public whitelist putAll(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mOwnsLazyValues:Z

    iput-boolean v0, p1, Landroid/os/Bundle;->mOwnsLazyValues:Z

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    iget-object v4, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    iput-boolean v3, v6, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    :cond_0
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    :cond_2
    iget v1, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_3

    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    :cond_3
    iget v1, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    :cond_4
    iget v1, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_5

    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    :cond_5
    invoke-virtual {p0}, Landroid/os/Bundle;->hasIntent()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/os/Bundle;->hasIntent()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setHasIntent(Z)V

    return-void
.end method

.method public whitelist putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    :cond_0
    iget-object p0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist putByte(Ljava/lang/String;B)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    return-void
.end method

.method public whitelist putByteArray(Ljava/lang/String;[B)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public whitelist putChar(Ljava/lang/String;C)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    return-void
.end method

.method public whitelist putCharArray(Ljava/lang/String;[C)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    return-void
.end method

.method public whitelist putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public whitelist putFloat(Ljava/lang/String;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public whitelist putFloatArray(Ljava/lang/String;[F)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void
.end method

.method public greylist putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-void

    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_5
    instance-of v0, p2, Landroid/util/Size;

    if-eqz v0, :cond_6

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-void

    :cond_6
    instance-of v0, p2, Landroid/util/SizeF;

    if-eqz v0, :cond_7

    check-cast p2, Landroid/util/SizeF;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-void

    :cond_7
    instance-of v0, p2, [Landroid/os/Parcelable;

    if-eqz v0, :cond_8

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_8
    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_9
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_a
    instance-of v0, p2, Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void

    :cond_b
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_c

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_d

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_d
    instance-of v0, p2, [S

    if-eqz v0, :cond_e

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-void

    :cond_e
    instance-of v0, p2, [C

    if-eqz v0, :cond_f

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-void

    :cond_f
    instance-of v0, p2, [F

    if-eqz v0, :cond_10

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_10
    instance-of v0, p2, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void

    :cond_11
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_12

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_12
    instance-of v0, p2, Landroid/os/Binder;

    if-eqz v0, :cond_13

    check-cast p2, Landroid/os/Binder;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :cond_13
    instance-of v0, p2, Landroid/os/IBinder;

    if-eqz v0, :cond_14

    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    sget-object p1, Landroid/os/Bundle;->intentClass:Ljava/lang/Class;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setHasIntent(Z)V

    return-void

    :cond_0
    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_1

    check-cast p2, Landroid/os/Bundle;

    iput-boolean v0, p2, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    :cond_1
    return-void
.end method

.method public whitelist putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public greylist putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public whitelist putShort(Ljava/lang/String;S)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    return-void
.end method

.method public whitelist putShortArray(Ljava/lang/String;[S)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    return-void
.end method

.method public whitelist putSize(Ljava/lang/String;Landroid/util/Size;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object p0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object p0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public whitelist putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;)V

    const/16 p1, 0x400

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    :cond_0
    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    :cond_1
    return-void
.end method

.method public greylist-max-o setAllowFds(Z)Z
    .locals 1

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return v0

    :cond_1
    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return v0
.end method

.method public whitelist setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method blacklist setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V
    .locals 1

    iget-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    :cond_0
    return-void
.end method

.method public greylist-max-o setDefusable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void

    :cond_0
    iget p1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/os/Bundle;->mFlags:I

    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "mParcelledData.dataSize="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "EMPTY_PARCEL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Bundle[mParcelledData.dataSize="

    const-string v1, "Bundle["

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Bundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw p0
.end method
