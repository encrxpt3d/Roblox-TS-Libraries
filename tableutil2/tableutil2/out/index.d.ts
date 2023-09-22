type RealObject = Record<string | number | symbol, defined> | ReadonlyArray<defined> | ReadonlyMap<defined, defined>;

export declare namespace Utilities {
	export function GenerateString(length: string | undefined): string;
	export function DeepCopy<T extends RealObject>(tbl: T): T;
	export function ShallowCopy<T extends RealObject>(tbl: T): T;
	export function Reconcile<T extends RealObject>(tbl: T): T;
}