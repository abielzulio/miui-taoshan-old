.class Lcom/android/server/am/Injector$BaseErrorDialogHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseErrorDialogHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTheme(I)I
    .locals 1
    .parameter "theme"

    .prologue
    .line 341
    const v0, 0x60d003e

    return v0
.end method
