/**
 * @file		LinkedBag340.cpp
 * @author		Frank M. Carrano and Timothy M. Henry
 * @author		Duc Ta
 * @author		Ratna Lama
 * @copyright	Copyright (c) 2017 Pearson Education, Hoboken, New Jersey.
 * @date		07/17/2018
 * 
 * @brief 		CSC 340 : Assignment #02
 * 
 * @section		DESCRIPTION
 * 
 * A program to demonstrate implementation of Bag ADT using Singly Linked List
 * 
 */
#include <iostream> 
#include <cstddef>
#include <cstdlib>		// required for rand()
#include <ctime>		// required for time()
#include "LinkedBag.h"

/**
* #1
* Function removeSecondNode340() 
* deletes the second node in the Singly Linked List
* removeSecondNode(340)
* @return 	true	if removeSecondNode340 operation is a success
**/
template<typename ItemType>
bool LinkedBag<ItemType>::removeSecondNode340() {
	Node<ItemType>* temp = headPtr;		// start with the headPtr node
	temp = headPtr->getNext();			// fetch the second node
	return remove(temp->getItem());		// remove the second node item
} // end removeSecondNode340

/**
* #2
* Function addEnd340()
* inserts the new node at the end of Singly Linked List
* @parm		newEntry	node containing new entry to be inserted at the end of the Singly Linked List
* @return	true		if addEnd340 operation is a success
**/
template<typename ItemType>
bool LinkedBag<ItemType>::addEnd340(const ItemType& newEntry) {
	Node<ItemType> *temp = headPtr;		// start from the head
	
	while (temp->getNext() != nullptr) {	// traverse the linkedlist until the last node is found
		temp = temp->getNext();
	}
	// we've reached the last node. This is where we'll add the new node.
	Node<ItemType> *newNode = new Node<ItemType>();
	newNode->setItem(newEntry);
	temp->setNext(newNode);
	itemCount++;
	return true;
} // end addEnd340

/**
* #3
* Function getCurrentSize340Iterative()
* counts the number of node in the Singly Linked List iteratively
* @return	count	the number of nodes in the Singly Linked List to return
**/
template<typename ItemType>
int LinkedBag<ItemType>::getCurrentSize340Iterative() const {
	int count{0};
	Node<ItemType> *temp = headPtr;		// start from the head
	
	while (temp != nullptr) {			// traverse the Singly Linked List
		count ++;						// count the number of nodes in each step
		temp = temp->getNext();			// move to the next node
	}
	return count;
} // end getCurrentSize340Iterative()

/**
 * #4
 * Function getCurrentSize340Recursive() 
 * Friendly reminder:
 * - This function must be a recursive function of immediate recursion type.
 * - Or (if needed) it can call one recursive function of immediate recursion type.
 * - In either case, recursive call(s) must be used to accomplish the main task of the function. 
 * @return	count	the number of nodes in the Singly Linked List to return	
 * */
template<typename ItemType>
int LinkedBag<ItemType>::getCurrentSize340Recursive() const {
	Node<ItemType> *temp = headPtr;		// start from the head
	return getCurrentSize340RecursiveHelper(temp);
} // end getCurrentSize340Recursive()

/**
* Helper Function to getCurrentSize340Recursive()
* Recursive approach
* @parm		temp	pointer to Node class
* @return	count	the number of nodes in the Singly Linked List to return	
**/
template<typename ItemType>
int LinkedBag<ItemType>::getCurrentSize340RecursiveHelper(Node<ItemType>* temp) const {
	int count{0};
	
	if (temp == nullptr) {		// Base Condition
		return count;
	} else {
		return 1 + getCurrentSize340RecursiveHelper(temp->getNext());	// recursion
	}
} // end getCurrentSize340RecursiveHelper()

/**
 * #5
 * Function getFrequencyOf340Recursive()
 * Friendly reminder:
 * - This function must be a recursive function of immediate recursion type.
 * - Or (if needed) it can call one recursive function of immediate recursion type.
 * - In either case, recursive call(s) must be used to accomplish the main task of the function. 
 * A recursive function of immediate recursion type is a function which calls itself.
 * @parm	anEntry		the frequency of anEntry in the Singly Linked List
 * @return	frequency	the number of times an entry occurs in the Singly Linked List to return
 * */
template<typename ItemType> 
int LinkedBag<ItemType>::getFrequencyOf340Recursive(const ItemType& anEntry) const {
	Node<ItemType> *temp = headPtr;		// start from the head node
	return getFrequencyOf340RecursiveHelper(temp, anEntry);
} // end getFrequencyOf340Recursive()

/** 
* Helper Function to getFrequencyOf340Recursive()
* @parm		temp		pointer to Node Class
* @parm		anEntry		the frequency of anEntry in the Singly Linked List
* @return	frequency	the number of times an entry occurs in the Singly Linked List to return
**/ 
template<typename ItemType> 
int LinkedBag<ItemType>::getFrequencyOf340RecursiveHelper(Node<ItemType>* temp, const ItemType& anEntry) const {
	if (temp == nullptr) {		// Base Case Condition
		return 0;
	} 
	
	if(temp->getItem() == anEntry) {
		return  1 + getFrequencyOf340RecursiveHelper(temp->getNext(), anEntry);
	} else {
		return getFrequencyOf340RecursiveHelper(temp->getNext(), anEntry);
	}
} // end getFrequencyOf340RecursiveHelper()

/**
 * Function removeRandom340()
 * removes a random entry from the Linked Bag
 * @return		ItemType	a generic entry item to return
 * */
template<typename ItemType>
ItemType LinkedBag<ItemType>::removeRandom340() {
	
	// Random Number generation
	// Seed the random number generator or
	// else the generator will get the same sequence of random numbers every run
	int random_num{};
	int size = getCurrentSize340Iterative();	// number of random numbers to generate
	int min{ 1 };								// lower bound (inclusive)
	int max = size;								// upper bound (inclusive)
	ItemType item{};						
	
	srand(time(nullptr));						// seed the random number

	for (int i{ 1 }; i <= max; i++) {
		random_num = rand() % max + min;		// generate a random number [min, max]
		
	}

	Node<ItemType>* temp1 = headPtr;		// start from the head
	int position = random_num;

	for (int i{ 0 }; i < (position - 2); i++) {	// traverse through the node
			temp1 = temp1->getNext();			// temp1 points to (n-1)th Node
		}
		Node<ItemType>* temp2 = temp1->getNext();	// nth Node
		item = temp2->getItem();
		remove(item);
		return item;
} // end removeRandom340()