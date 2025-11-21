.class Landroid/os/StrictMode$4;
.super Ljava/lang/ThreadLocal;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    .locals 1

    new-instance p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;-><init>(I)V

    return-object p0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/os/StrictMode$4;->initialValue()Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    move-result-object p0

    return-object p0
.end method
